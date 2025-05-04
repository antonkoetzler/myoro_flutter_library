import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('router', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp.router(routerConfig: router));
    await tester.pumpAndSettle();
    expect(find.byType(MainScreen), findsOneWidget);
    expect(
      () => router.go('/widget_showcase/${faker.lorem.word()}'),
      throwsA(isA<AssertionError>()),
    );
    router.go(
      '/widget_showcase/${StoryboardWidgetListingEnum.fake().widgetNames.first}',
    );
    await tester.pumpAndSettle();
    expect(find.byType(WidgetShowcaseScreen), findsOneWidget);
  });
}
