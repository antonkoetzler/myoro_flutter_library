import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroMenuThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroMenuThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.backgroundColor, colorScheme.primary);
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadiusLength));
    expect(themeExtension.searchBarPadding, const EdgeInsets.all(10));
    expect(themeExtension.searchBarInputStyle, MyoroInputStyleEnum.outlined);
    expect(themeExtension.itemBorderRadius, BorderRadius.zero);
    expect(themeExtension.dialogTextStyle, textTheme.bodyMedium!);
    expect(themeExtension.dialogTextLoaderPadding, const EdgeInsets.all(15));
  });

  test('MyoroMenuThemeExtension.lerp', () {
    final themeExtension1 = MyoroMenuThemeExtension.fake();
    final themeExtension2 = MyoroMenuThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.backgroundColor,
        Color.lerp(themeExtension1.backgroundColor, themeExtension2.backgroundColor, i),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(
        lerpedThemeExtension.searchBarPadding,
        EdgeInsets.lerp(themeExtension1.searchBarPadding, themeExtension2.searchBarPadding, i),
      );
      expect(
        lerpedThemeExtension.searchBarInputStyle,
        myoroLerp(themeExtension1.searchBarInputStyle, themeExtension2.searchBarInputStyle, i),
      );
      expect(
        lerpedThemeExtension.itemBorderRadius,
        BorderRadius.lerp(themeExtension1.itemBorderRadius, themeExtension2.itemBorderRadius, i),
      );
      expect(
        lerpedThemeExtension.dialogTextStyle,
        TextStyle.lerp(themeExtension1.dialogTextStyle, themeExtension2.dialogTextStyle, i),
      );
      expect(
        lerpedThemeExtension.dialogTextLoaderPadding,
        EdgeInsets.lerp(themeExtension1.dialogTextLoaderPadding, themeExtension2.dialogTextLoaderPadding, i),
      );
    }
  });
}
