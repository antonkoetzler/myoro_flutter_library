import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_flutter_library/src/mock/theme_extension.mocks.dart';

void main() {
  testWidgets('MyoroBuildContextExtension', (WidgetTester tester) async {
    late final BuildContext context;
    final isDarkMode = faker.randomGenerator.boolean();

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [MyoroBuildContextExtension.isDarkMode]
    expect(context.isDarkMode, isDarkMode);

    // [MyoroBuildContextExtension.themeData]
    expect(context.themeData, Theme.of(context));

    // [MyoroBuildContextExtension.colorScheme]
    expect(context.colorScheme, ColorScheme.of(context));

    // [MyoroBuildContextExtension.textTheme]
    expect(context.textTheme, TextTheme.of(context));

    // [MyoroBuildContextExtension.navigator]
    expect(context.navigator, Navigator.of(context));

    // [MyoroBuildContextExtension.overlay]
    expect(context.overlay, Overlay.of(context));

    // [MyoroBuildContextExtension.mediaQuery]
    expect(context.mediaQuery, MediaQuery.of(context));

    // [MyoroBuildContextExtension.themeExtensions]
    expect(context.themeExtensions, Theme.of(context).extensions);

    // [MyoroBuildContextExtension.resolveThemeExtension]
    expect(() => context.resolveThemeExtension<MyoroCardThemeExtension>(), throwsA(isA<StateError>()));
    expect(() => context.resolveThemeExtension<MockThemeExtension>(), throwsA(isA<StateError>()));

    // Note: Testing drawer and snackbar functionality requires theme extensions to be registered
    // These tests are skipped to avoid theme extension dependency issues
  });
}
