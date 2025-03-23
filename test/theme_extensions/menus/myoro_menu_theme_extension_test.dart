import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroMenuThemeExtension].
void main() {
  late final MyoroMenuThemeExtension themeExtension1;
  late final MyoroMenuThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroMenuThemeExtension.fake();
    themeExtension2 = MyoroMenuThemeExtension.fake();
  });

  test('MyoroMenuThemeExtension.copyWith', () {
    MyoroMenuThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      border: themeExtension2.border,
      borderRadius: themeExtension2.borderRadius,
      searchBarPadding: themeExtension2.searchBarPadding,
      searchBarInputStyle: themeExtension2.searchBarInputStyle,
      itemBorderRadius: themeExtension2.itemBorderRadius,
      dialogTextStyle: themeExtension2.dialogTextStyle,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroMenuThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(
          themeExtension1.primaryColor,
          themeExtension2.primaryColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.border,
        Border.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(
          themeExtension1.borderRadius,
          themeExtension2.borderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.searchBarPadding,
        EdgeInsets.lerp(
          themeExtension1.searchBarPadding,
          themeExtension2.searchBarPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.searchBarInputStyle,
        myoroLerp(
          themeExtension1.searchBarInputStyle,
          themeExtension2.searchBarInputStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.itemBorderRadius,
        BorderRadius.lerp(
          themeExtension1.itemBorderRadius,
          themeExtension2.itemBorderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.dialogTextStyle,
        TextStyle.lerp(
          themeExtension1.dialogTextStyle,
          themeExtension2.dialogTextStyle,
          i,
        ),
      );
    }
  });
}
