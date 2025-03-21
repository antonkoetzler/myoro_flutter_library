import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroMaterialApp].
void main() {
  final String? title =
      faker.randomGenerator.boolean() ? faker.lorem.word() : null;

  final ThemeMode? themeMode =
      faker.randomGenerator.boolean()
          ? ThemeMode.values[faker.randomGenerator.integer(
            ThemeMode.values.length,
          )]
          : null;

  final MyoroMaterialAppColorSchemeBuilder? colorSchemeBuilder =
      faker.randomGenerator.boolean()
          ? (ColorScheme colorScheme) => colorScheme.copyWith(
            brightness: colorScheme.brightness,
            primary: Colors.pink,
          )
          : null;

  const textStyle = TextStyle();
  final MyoroMaterialAppTextThemeBuilder? textThemeBuilder =
      faker.randomGenerator.boolean()
          ? (TextTheme textTheme) => textTheme.copyWith(bodyLarge: textStyle)
          : null;

  testWidgets('MyoroMaterialApp', (WidgetTester tester) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMaterialApp(
          title: title,
          themeMode: themeMode,
          colorSchemeBuilder: colorSchemeBuilder,
          home: Builder(
            builder: (BuildContext buildContext) {
              context = buildContext;
              return const MyoroScreen();
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Testing the [Widget] rendered.
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
            (w.child as MaterialApp).themeMode ==
                (themeMode ?? ThemeMode.dark) &&
            (w.child as MaterialApp).home is Builder,
      ),
      findsOneWidget,
    );

    // Grabbing if the test is in dark mode or not.
    final bool isDarkMode =
        themeMode != null ? themeMode == ThemeMode.dark : true;

    // Testing the generated [ColorScheme].
    final myoroColorScheme = createMyoroColorScheme(isDarkMode);
    expect(
      ColorScheme.of(context) == myoroColorScheme,
      colorSchemeBuilder == null,
    );

    // Testing the generated [TextTheme].
    expect(
      TextTheme.of(context).bodyLarge == textStyle,
      textThemeBuilder == null,
    );
  });
}
