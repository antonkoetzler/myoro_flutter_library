import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../../mock/shared_preferences.mocks.dart';

void main() {
  final kiwiContainer = KiwiContainer();

  setUp(() {
    final mockSharedPreferences = MockSharedPreferences.preConfigured();
    kiwiContainer
      ..registerSingleton<SharedPreferences>((_) => mockSharedPreferences)
      ..registerSingleton<ThemeModeController>(
        (_) => ThemeModeController(faker.randomGenerator.boolean(), mockSharedPreferences),
      );
  });

  tearDown(kiwiContainer.clear);

  test('StoryboardScreenViewModel.toggleThemeButtonOnTapUp', () async {
    final viewModel = StoryboardScreenViewModel(StoryboardScreenConfiguration.fake());
    final themeModeController = kiwiContainer.resolve<ThemeModeController>();
    final themeMode = themeModeController.themeMode;
    await viewModel.toggleThemeButtonOnTapUp();
    expect(themeMode, isNot(themeModeController.themeMode));
  });
}
