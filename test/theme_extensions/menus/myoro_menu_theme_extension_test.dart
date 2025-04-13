import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroMenuThemeExtension themeExtension1;
  late final MyoroMenuThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroMenuThemeExtension.fake();
    themeExtension2 = MyoroMenuThemeExtension.fake();
  });

  test('MyoroMenuThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        primaryColor: themeExtension2.primaryColor,
        border: themeExtension2.border,
        borderRadius: themeExtension2.borderRadius,
        searchBarPadding: themeExtension2.searchBarPadding,
        searchBarInputStyle: themeExtension2.searchBarInputStyle,
        itemBorderRadius: themeExtension2.itemBorderRadius,
        dialogTextStyle: themeExtension2.dialogTextStyle,
        dialogTextLoaderPadding: themeExtension2.dialogTextLoaderPadding,
      ),
      themeExtension2,
    );
  });

  test('MyoroMenuThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
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
      expect(
        lerpedThemeExtension.dialogTextLoaderPadding,
        EdgeInsets.lerp(
          themeExtension1.dialogTextLoaderPadding,
          themeExtension2.dialogTextLoaderPadding,
          i,
        ),
      );
    }
  });

  test('MyoroMenuThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroMenuThemeExtension(\n'
      '  primaryColor: ${themeExtension1.primaryColor},\n'
      '  border: ${themeExtension1.border},\n'
      '  borderRadius: ${themeExtension1.borderRadius},\n'
      '  searchBarPadding: ${themeExtension1.searchBarPadding},\n'
      '  searchBarInputStyle: ${themeExtension1.searchBarInputStyle},\n'
      '  itemBorderRadius: ${themeExtension1.itemBorderRadius},\n'
      '  dialogTextStyle: ${themeExtension1.dialogTextStyle},\n'
      '  dialogTextLoaderPadding: ${themeExtension1.dialogTextLoaderPadding},\n'
      ');',
    );
  });
}
