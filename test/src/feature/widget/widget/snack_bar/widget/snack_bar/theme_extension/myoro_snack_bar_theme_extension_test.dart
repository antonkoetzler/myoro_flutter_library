import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSnackBarThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroSnackBarThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.primaryColor, colorScheme.primary);
    expect(themeExtension.standardBorderColor, colorScheme.onPrimary);
    expect(themeExtension.attentionBorderColor, MyoroColors.blue1);
    expect(themeExtension.successBorderColor, MyoroColors.green1);
    expect(themeExtension.errorBorderColor, MyoroColors.red1);
    expect(themeExtension.borderWidth, 2);
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadiusLength));
    expect(themeExtension.padding, const EdgeInsets.all(10));
    expect(themeExtension.spacing, 10);
    expect(themeExtension.messageTextStyle, textTheme.bodySmall!);
    expect(themeExtension.closeButtonIconConfiguration, const MyoroIconConfiguration(icon: Icons.close, size: 15));
  });

  test('MyoroSnackBarThemeExtension.lerp', () {
    final themeExtension1 = MyoroSnackBarThemeExtension.fake();
    final themeExtension2 = MyoroSnackBarThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(themeExtension1.primaryColor, themeExtension2.primaryColor, i),
      );
      expect(
        lerpedThemeExtension.standardBorderColor,
        Color.lerp(themeExtension1.standardBorderColor, themeExtension2.standardBorderColor, i),
      );
      expect(
        lerpedThemeExtension.attentionBorderColor,
        Color.lerp(themeExtension1.attentionBorderColor, themeExtension2.attentionBorderColor, i),
      );
      expect(
        lerpedThemeExtension.successBorderColor,
        Color.lerp(themeExtension1.successBorderColor, themeExtension2.successBorderColor, i),
      );
      expect(
        lerpedThemeExtension.errorBorderColor,
        Color.lerp(themeExtension1.errorBorderColor, themeExtension2.errorBorderColor, i),
      );
      expect(lerpedThemeExtension.borderWidth, lerpDouble(themeExtension1.borderWidth, themeExtension2.borderWidth, i));
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(lerpedThemeExtension.padding, EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i));
      expect(lerpedThemeExtension.spacing, lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i));
      expect(
        lerpedThemeExtension.messageTextStyle,
        TextStyle.lerp(themeExtension1.messageTextStyle, themeExtension2.messageTextStyle, i),
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
}
