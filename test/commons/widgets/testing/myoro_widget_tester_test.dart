import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroWidgetTester].
void main() {
  Future<ThemeMode> setUpTest(WidgetTester tester, Widget widget) async {
    final themeMode = ThemeMode.values[faker.randomGenerator.integer(ThemeMode.values.length)];
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeMode: themeMode,
        child: widget,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroWidgetTester), findsOneWidget);
    return themeMode;
  }

  testWidgets('MyoroWidgetTester: [MyoroMaterialApp] child provided', (WidgetTester tester) async {
    await setUpTest(
      tester,
      const MyoroMaterialApp(home: MyoroScreen()),
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroMaterialApp && w.themeMode == null),
      findsOneWidget,
    );
  });

  testWidgets('MyoroWidgetTester: [MyoroScreen] child provided', (WidgetTester tester) async {
    final ThemeMode themeMode = await setUpTest(
      tester,
      const MyoroScreen(),
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroMaterialApp && w.themeMode == themeMode),
      findsOneWidget,
    );
  });

  testWidgets('MyoroWidgetTester: [MyoroAppBar] child provided', (WidgetTester tester) async {
    final ThemeMode themeMode = await setUpTest(
      tester,
      const MyoroAppBar(child: SizedBox.shrink()),
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroMaterialApp && w.themeMode == themeMode && w.home.appBar != null && w.home.body == null,
      ),
      findsOneWidget,
    );
  });

  testWidgets('MyoroWidgetTester: Normal [Widget] child provided', (WidgetTester tester) async {
    final ThemeMode themeMode = await setUpTest(
      tester,
      const SizedBox.shrink(),
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroMaterialApp && w.themeMode == themeMode && w.home.appBar == null && w.home.body != null,
      ),
      findsOneWidget,
    );
  });
}
