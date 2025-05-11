import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class _FooThemeExtension extends ThemeExtension<_FooThemeExtension> {
  const _FooThemeExtension();

  @override
  ThemeExtension<_FooThemeExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<_FooThemeExtension> lerp(
    covariant ThemeExtension<_FooThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}

/// Widget test of [MyoroApp].
void main() {
  /// [MyoroApp.title]
  final String? title = faker.randomGenerator.boolean() ? faker.lorem.word() : null;

  /// [MyoroApp.themeMode]
  final ThemeMode? themeMode =
      faker.randomGenerator.boolean()
          ? ThemeMode.values[faker.randomGenerator.integer(ThemeMode.values.length)]
          : null;

  /// [MyoroApp.colorSchemeBuilder]
  final MyoroAppColorSchemeBuilder? colorSchemeBuilder =
      faker.randomGenerator.boolean()
          ? (ColorScheme colorScheme) => colorScheme.copyWith(primary: Colors.pink)
          : null;

  /// [MyoroApp.textThemeBuilder]
  final Color bodySmallColor =
      kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];
  final MyoroAppTextThemeBuilder? textThemeBuilder =
      faker.randomGenerator.boolean()
          ? (TextTheme textTheme) =>
              textTheme.copyWith(bodySmall: textTheme.bodySmall!.withColor(bodySmallColor))
          : null;

  /// [MyoroApp.themeExtensionsBuilder]
  final MyoroAppThemeExtensionsBuilder? themeExtensionsBuilder =
      faker.randomGenerator.boolean() ? (_, __, ___) => const [_FooThemeExtension()] : null;

  /// [MyoroApp.localizationsDelegates]
  final Iterable<LocalizationsDelegate>? localizationsDelegates =
      faker.randomGenerator.boolean() ? ([GlobalCupertinoLocalizations.delegate]) : null;

  /// [MyoroApp.supportedLocales]
  final List<Locale>? supportedLocales =
      faker.randomGenerator.boolean() ? const [Locale('en'), Locale('pt')] : null;

  testWidgets('MyoroApp', (WidgetTester tester) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroApp(
          configuration: MyoroAppConfiguration(
            title: title,
            themeMode: themeMode,
            colorSchemeBuilder: colorSchemeBuilder,
            textThemeBuilder: textThemeBuilder,
            themeExtensionsBuilder: themeExtensionsBuilder,
            localizationsDelegates: localizationsDelegates,
            supportedLocales: supportedLocales,
            home: Builder(
              builder: (BuildContext buildContext) {
                context = buildContext;
                return MyoroScreen(configuration: MyoroScreenConfiguration.fake());
              },
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Testing the [Widget] rendered.
    expect(find.byType(MyoroApp), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MaterialApp &&
            !w.debugShowCheckedModeBanner &&
            w.title == title &&
            w.themeMode == (themeMode ?? ThemeMode.dark) &&
            w.localizationsDelegates?.length == (localizationsDelegates?.length ?? 3) &&
            w.supportedLocales == (supportedLocales ?? const [Locale('en', 'US')]) &&
            w.home is Builder,
      ),
      findsOneWidget,
    );

    final bool isDarkMode = themeMode != null ? themeMode == ThemeMode.dark : true;
    final myoroColorScheme = createMyoroColorScheme(isDarkMode);
    final myoroTextTheme = createMyoroTextTheme(isDarkMode);
    final myoroThemeExtensions = createMyoroThemeExtensions(
      isDarkMode,
      myoroColorScheme,
      myoroTextTheme,
    );

    // Testing the generated [ColorScheme].
    expect(context.colorScheme == myoroColorScheme, colorSchemeBuilder == null);

    // Testing the generated [TextTheme].
    expect(context.textTheme.bodySmall!.color == bodySmallColor, textThemeBuilder != null);

    // Testing the generated [ThemeExtension]s.
    expect(
      context.themeExtensions.length,
      myoroThemeExtensions.length + (themeExtensionsBuilder != null ? 1 : 0),
    );
  });
}
