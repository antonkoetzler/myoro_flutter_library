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
    expect(themeExtension.border, Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary));
    expect(themeExtension.padding, const EdgeInsets.all(5));
    expect(themeExtension.spacing, 10);
    expect(themeExtension.titleTextStyle, textTheme.titleSmall!);
    expect(themeExtension.closeButtonIconConfiguration, const MyoroIconConfiguration(icon: Icons.close, size: 20));
  });

  test('MyoroModalThemeExtension.lerp', () {
    final themeExtension1 = MyoroModalThemeExtension.fake();
    final themeExtension2 = MyoroModalThemeExtension.fake();
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
      expect(lerpedThemeExtension.border, Border.lerp(themeExtension1.border, themeExtension2.border, i));
      expect(lerpedThemeExtension.padding, EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i));
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
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
    late final MyoroModalThemeExtension themeExtension;
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    final screenSize = MediaQuery.of(context).size;
    expect(
      themeExtension.constraints,
      BoxConstraints(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.5),
    );
  });
}
