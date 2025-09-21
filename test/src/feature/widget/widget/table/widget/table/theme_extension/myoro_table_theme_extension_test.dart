import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroTableThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.columnTextStyle, textTheme.titleMedium!);
    expect(themeExtension.columnSpacing, 10);
    expect(themeExtension.rowTextStyle, textTheme.bodyMedium!);
    expect(themeExtension.loaderEmptyMessageErrorMessagePadding, const EdgeInsets.all(10));
    expect(themeExtension.emptyMessageTextStyle, textTheme.headlineMedium!);
    expect(themeExtension.errorMessageTextStyle, textTheme.headlineMedium!.withColor(colorScheme.error));
  });

  test('MyoroTableThemeExtension.lerp', () {
    final themeExtension1 = MyoroTableThemeExtension.fake();
    final themeExtension2 = MyoroTableThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.columnTextStyle, TextStyle.lerp(themeExtension1.columnTextStyle, themeExtension2.columnTextStyle, i));
      expect(lerpedThemeExtension.columnSpacing, lerpDouble(themeExtension1.columnSpacing, themeExtension2.columnSpacing, i));
      expect(lerpedThemeExtension.rowTextStyle, TextStyle.lerp(themeExtension1.rowTextStyle, themeExtension2.rowTextStyle, i));
      expect(
        lerpedThemeExtension.loaderEmptyMessageErrorMessagePadding,
        EdgeInsets.lerp(themeExtension1.loaderEmptyMessageErrorMessagePadding, themeExtension2.loaderEmptyMessageErrorMessagePadding, i),
      );
      expect(lerpedThemeExtension.emptyMessageTextStyle, TextStyle.lerp(themeExtension1.emptyMessageTextStyle, themeExtension2.emptyMessageTextStyle, i));
      expect(lerpedThemeExtension.errorMessageTextStyle, TextStyle.lerp(themeExtension1.errorMessageTextStyle, themeExtension2.errorMessageTextStyle, i));
    }
  });
}
