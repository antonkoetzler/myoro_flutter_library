import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final isDarkMode = faker.randomGenerator.boolean();
  final fontWeight = FontWeight.values[faker.randomGenerator.integer(FontWeight.values.length)];
  final fontStyle = FontStyle.values[faker.randomGenerator.integer(FontStyle.values.length)];
  final style = MyoroTypographyStyle(isDarkMode, fontWeight, fontStyle);
  final styleCopy = MyoroTypographyStyle(isDarkMode, fontWeight, fontStyle);
  final styleUnique = MyoroTypographyStyle(!isDarkMode, fontWeight, fontStyle);

  test('MyoroTypographyStyle fields', () {
    TextStyle textStyleBuilder(
      MyoroFontSizeEnum fontSize,
      bool isDarkMode,
      FontWeight fontWeight,
      FontStyle fontStyle,
    ) {
      return TextStyle(
        fontFamily: 'Nunito',
        color: isDarkMode ? MyoroColors.gray3 : MyoroColors.gray1,
        fontSize: fontSize.size,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      );
    }

    expect(style.tiny, textStyleBuilder(MyoroFontSizeEnum.tiny, isDarkMode, fontWeight, fontStyle));
    expect(style.small, textStyleBuilder(MyoroFontSizeEnum.small, isDarkMode, fontWeight, fontStyle));
    expect(style.medium, textStyleBuilder(MyoroFontSizeEnum.medium, isDarkMode, fontWeight, fontStyle));
    expect(style.large, textStyleBuilder(MyoroFontSizeEnum.large, isDarkMode, fontWeight, fontStyle));
    expect(style.extraLarge, textStyleBuilder(MyoroFontSizeEnum.extraLarge, isDarkMode, fontWeight, fontStyle));
  });

  test('MyoroTypographyStyle == operator', () {
    expect(style == styleCopy, isTrue);
    expect(style == styleUnique, isFalse);
  });

  test('MyoroTypographyStyle.hashCode', () {
    expect(style.hashCode == styleCopy.hashCode, isTrue);
    expect(style.hashCode == styleUnique.hashCode, isFalse);
  });

  test('MyoroTypographyStyle.toString', () {
    expect(
      style.toString(),
      'MyoroTypographyStyle(\n'
      '  tiny: ${style.tiny},\n'
      '  small: ${style.small},\n'
      '  medium: ${style.medium},\n'
      '  large: ${style.large},\n'
      '  extraLarge: ${style.extraLarge},\n'
      ');',
    );
  });
}
