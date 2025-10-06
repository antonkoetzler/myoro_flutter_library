import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroModalThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroModalThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.primaryColor, colorScheme.primary);
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadius));
    expect(
      themeExtension.border,
      Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
    );
    expect(themeExtension.padding, const EdgeInsets.all(kMyoroMultiplier));
    expect(themeExtension.spacing, 10);
    expect(themeExtension.titleTextStyle, textTheme.titleSmall!);
    expect(
      themeExtension.closeButtonIconConfiguration,
      const MyoroIconConfiguration(icon: Icons.close, size: 20),
    );
  });

  test('MyoroModalThemeExtension.lerp', () {
    // Use deterministic values instead of faker to avoid test flakiness
    final themeExtension1 = MyoroModalThemeExtension(
      primaryColor: Colors.blue,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: Colors.black, width: 1.0),
      padding: const EdgeInsets.all(16.0),
      spacing: 10.0,
      titleTextStyle: const TextStyle(fontSize: 16.0),
      closeButtonIconConfiguration: const MyoroIconConfiguration(icon: Icons.close, size: 20.0),
    );
    final themeExtension2 = MyoroModalThemeExtension(
      primaryColor: Colors.red,
      borderRadius: BorderRadius.circular(12.0),
      border: Border.all(color: Colors.white, width: 2.0),
      padding: const EdgeInsets.all(20.0),
      spacing: 15.0,
      titleTextStyle: const TextStyle(fontSize: 18.0),
      closeButtonIconConfiguration: const MyoroIconConfiguration(icon: Icons.close, size: 24.0),
    );
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(themeExtension1.primaryColor, themeExtension2.primaryColor, i),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(
        lerpedThemeExtension.border,
        Border.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.padding,
        EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(themeExtension1.titleTextStyle, themeExtension2.titleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.closeButtonIconConfiguration,
        MyoroIconConfiguration.lerp(
          themeExtension1.closeButtonIconConfiguration,
          themeExtension2.closeButtonIconConfiguration,
          i,
        ),
      );
    }
  });

  testWidgets('MyoroModalThemeExtension.constraints', (tester) async {
    late final BuildContext context;
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroModalThemeExtension.builder(colorScheme, textTheme);
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    final screenSize = MediaQuery.of(context).size;
    expect(
      themeExtension.getDefaultConstraints(context),
      BoxConstraints(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.5),
    );
  });
}
