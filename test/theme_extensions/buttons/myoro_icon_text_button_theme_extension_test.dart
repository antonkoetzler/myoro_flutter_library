import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroIconTextButtonThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroIconTextButtonThemeExtension.fake();
    themeExtension2 = MyoroIconTextButtonThemeExtension.fake();
  });

  test('MyoroIconTextButtonThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(textStyle: themeExtension2.textStyle), themeExtension2);
  });

  test('MyoroIconTextButtonThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.textStyle,
        TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i),
      );
    }
  });

  test('MyoroIconTextButtonThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroIconTextButtonThemeExtension(\n'
      '  textStyle: ${themeExtension1.textStyle},\n'
      ');',
    );
  });
}
