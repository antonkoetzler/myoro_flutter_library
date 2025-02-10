import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [createMyoroTextTheme].
void main() {
  TextStyle createTextStyle(
    bool isDarkMode, {
    required MyoroFontSizeEnum fontSize,
    FontWeight fontWeight = FontWeight.normal,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: isDarkMode ? MyoroDarkModeColorTheme.secondary : MyoroLightModeColorTheme.secondary,
      fontSize: fontSize.size,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  test('createMyoroTextTheme', () {
    final TextTheme darkModeTextTheme = createMyoroTextTheme(true);
    expect(darkModeTextTheme.bodySmall, createTextStyle(true, fontSize: MyoroFontSizeEnum.small));
    expect(darkModeTextTheme.bodyMedium, createTextStyle(true, fontSize: MyoroFontSizeEnum.medium));
    expect(darkModeTextTheme.bodyLarge, createTextStyle(true, fontSize: MyoroFontSizeEnum.large));
    expect(darkModeTextTheme.headlineSmall, createTextStyle(true, fontSize: MyoroFontSizeEnum.small, fontStyle: FontStyle.italic));
    expect(darkModeTextTheme.headlineMedium, createTextStyle(true, fontSize: MyoroFontSizeEnum.medium, fontStyle: FontStyle.italic));
    expect(darkModeTextTheme.headlineLarge, createTextStyle(true, fontSize: MyoroFontSizeEnum.large, fontStyle: FontStyle.italic));
    expect(darkModeTextTheme.labelSmall, createTextStyle(true, fontSize: MyoroFontSizeEnum.small, fontWeight: FontWeight.w600));
    expect(darkModeTextTheme.labelMedium, createTextStyle(true, fontSize: MyoroFontSizeEnum.medium, fontWeight: FontWeight.w600));
    expect(darkModeTextTheme.labelLarge, createTextStyle(true, fontSize: MyoroFontSizeEnum.large, fontWeight: FontWeight.w600));
    expect(darkModeTextTheme.titleSmall, createTextStyle(true, fontSize: MyoroFontSizeEnum.small, fontWeight: FontWeight.bold));
    expect(darkModeTextTheme.titleMedium, createTextStyle(true, fontSize: MyoroFontSizeEnum.medium, fontWeight: FontWeight.bold));
    expect(darkModeTextTheme.titleLarge, createTextStyle(true, fontSize: MyoroFontSizeEnum.large, fontWeight: FontWeight.bold));
    expect(darkModeTextTheme.displaySmall, createTextStyle(true, fontSize: MyoroFontSizeEnum.small, fontWeight: FontWeight.w800));
    expect(darkModeTextTheme.displayMedium, createTextStyle(true, fontSize: MyoroFontSizeEnum.medium, fontWeight: FontWeight.w800));
    expect(darkModeTextTheme.displayLarge, createTextStyle(true, fontSize: MyoroFontSizeEnum.large, fontWeight: FontWeight.w800));

    final TextTheme lightModeTextTheme = createMyoroTextTheme(false);
    expect(lightModeTextTheme.bodySmall, createTextStyle(false, fontSize: MyoroFontSizeEnum.small));
    expect(lightModeTextTheme.bodyMedium, createTextStyle(false, fontSize: MyoroFontSizeEnum.medium));
    expect(lightModeTextTheme.bodyLarge, createTextStyle(false, fontSize: MyoroFontSizeEnum.large));
    expect(lightModeTextTheme.headlineSmall, createTextStyle(false, fontSize: MyoroFontSizeEnum.small, fontStyle: FontStyle.italic));
    expect(lightModeTextTheme.headlineMedium, createTextStyle(false, fontSize: MyoroFontSizeEnum.medium, fontStyle: FontStyle.italic));
    expect(lightModeTextTheme.headlineLarge, createTextStyle(false, fontSize: MyoroFontSizeEnum.large, fontStyle: FontStyle.italic));
    expect(lightModeTextTheme.labelSmall, createTextStyle(false, fontSize: MyoroFontSizeEnum.small, fontWeight: FontWeight.w600));
    expect(lightModeTextTheme.labelMedium, createTextStyle(false, fontSize: MyoroFontSizeEnum.medium, fontWeight: FontWeight.w600));
    expect(lightModeTextTheme.labelLarge, createTextStyle(false, fontSize: MyoroFontSizeEnum.large, fontWeight: FontWeight.w600));
    expect(lightModeTextTheme.titleSmall, createTextStyle(false, fontSize: MyoroFontSizeEnum.small, fontWeight: FontWeight.bold));
    expect(lightModeTextTheme.titleMedium, createTextStyle(false, fontSize: MyoroFontSizeEnum.medium, fontWeight: FontWeight.bold));
    expect(lightModeTextTheme.titleLarge, createTextStyle(false, fontSize: MyoroFontSizeEnum.large, fontWeight: FontWeight.bold));
    expect(lightModeTextTheme.displaySmall, createTextStyle(false, fontSize: MyoroFontSizeEnum.small, fontWeight: FontWeight.w800));
    expect(lightModeTextTheme.displayMedium, createTextStyle(false, fontSize: MyoroFontSizeEnum.medium, fontWeight: FontWeight.w800));
    expect(lightModeTextTheme.displayLarge, createTextStyle(false, fontSize: MyoroFontSizeEnum.large, fontWeight: FontWeight.w800));
  });
}
