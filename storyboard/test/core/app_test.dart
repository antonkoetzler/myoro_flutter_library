import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:mocktail/mocktail.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

final class MockSharedPreferences extends Mock implements SharedPreferences {}

/// Widget test of [App].
void main() {
  final kiwiContainer = KiwiContainer();

  setUp(
    () => kiwiContainer.registerSingleton<SharedPreferences>(
      (_) => MockSharedPreferences(),
    ),
  );
  tearDown(() => kiwiContainer.clear());

  testWidgets('App', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider(
        create: (_) => WidgetShowcaseBloc(),
        child: App(faker.randomGenerator.boolean()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(App), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroMaterialApp && w.title == 'MFL Storyboard',
      ),
      findsOneWidget,
    );
    expect(find.byType(MyoroScreen), findsOneWidget);
    expect(find.byType(StoryboardAppBar), findsOneWidget);
    expect(find.byType(StoryboardBody), findsOneWidget);
  });
}
