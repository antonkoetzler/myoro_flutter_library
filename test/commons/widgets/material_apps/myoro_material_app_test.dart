import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroMaterialApp].
void main() {
  final String? title = faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  final ThemeMode? themeMode = faker.randomGenerator.boolean() ? ThemeMode.values[faker.randomGenerator.integer(ThemeMode.values.length)] : null;

  testWidgets('MyoroMaterialApp', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMaterialApp(
          title: title,
          themeMode: themeMode,
          home: const MyoroScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMaterialApp), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is GestureDetector &&
            w.behavior == HitTestBehavior.opaque &&
            w.onTap != null &&
            w.child is MaterialApp &&
            !(w.child as MaterialApp).debugShowCheckedModeBanner &&
            (w.child as MaterialApp).title == title &&
            (w.child as MaterialApp).home is Builder &&
            (w.child as MaterialApp).themeMode == (themeMode ?? ThemeMode.dark),
      ),
      findsOneWidget,
    );
    expect(find.byType(MyoroScreen), findsOneWidget);
  });
}
