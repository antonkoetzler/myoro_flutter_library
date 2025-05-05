import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

import '../exports.dart';

void main() {
  final kiwiContainer = KiwiContainer();
  final key = GlobalKey();

  setUp(() {
    kiwiContainer
      ..registerSingleton<SharedPreferences>((_) => MockSharedPreferences())
      ..registerSingleton<ModulesController>((_) => ModulesController());
  });

  tearDown(() {
    kiwiContainer.clear();
  });

  testWidgets('router', (WidgetTester tester) async {
    await tester.pumpWidget(App(key: key));
    await tester.pumpAndSettle();

    expect(find.byType(MainScreen), findsOneWidget);

    router.go('/widget_showcase/${StoryboardWidgetListingEnum.fake().widgetNames.first}');
    await tester.pumpAndSettle();
    expect(find.byType(WidgetShowcaseScreen), findsOneWidget);
  });
}
