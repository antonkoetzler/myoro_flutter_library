import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';
import 'package:window_manager/window_manager.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockWindowManager extends Mock implements WindowManager {}

void main() {
  late MockSharedPreferences mockPrefs;
  final kiwiContainer = KiwiContainer();

  setUp(() {
    mockPrefs = MockSharedPreferences();
    kiwiContainer.clear();
  });

  test(
    'initializeStoryboard initializes dependencies and sets dark mode pref',
    () async {
      when(() => mockPrefs.getBool(any())).thenReturn(null);
      when(() => mockPrefs.setBool(any(), any())).thenAnswer((_) async => true);

      // Register manually to Kiwi since windowManager is a global singleton
      kiwiContainer
        ..registerSingleton<SharedPreferences>((_) => mockPrefs)
        ..registerSingleton<ModulesController>((_) => ModulesController());

      await initializeStoryboard();

      verify(
        () => mockPrefs.getBool(kSharedPreferencesDarkModeEnabledJsonKey),
      ).called(1);
      verify(
        () => mockPrefs.setBool(kSharedPreferencesDarkModeEnabledJsonKey, true),
      ).called(1);
    },
  );
}
