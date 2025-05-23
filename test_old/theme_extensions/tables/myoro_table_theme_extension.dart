import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroTableThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroTableThemeExtension.fake();
    themeExtension2 = MyoroTableThemeExtension.fake();
  });

  test('MyoroTableThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        decoration: themeExtension2.decoration,
        columnTextStyle: themeExtension2.columnTextStyle,
        columnSpacing: themeExtension2.columnSpacing,
        rowTextStyle: themeExtension2.rowTextStyle,
        loaderEmptyMessageErrorMessagePadding:
            themeExtension2.loaderEmptyMessageErrorMessagePadding,
        emptyMessageTextStyle: themeExtension2.emptyMessageTextStyle,
        errorMessageTextStyle: themeExtension2.errorMessageTextStyle,
      ),
      themeExtension2,
    );
  });

  test('MyoroTableThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.decoration,
        BoxDecoration.lerp(themeExtension1.decoration, themeExtension2.decoration, i),
      );
      expect(
        lerpedThemeExtension.columnTextStyle,
        TextStyle.lerp(themeExtension1.columnTextStyle, themeExtension2.columnTextStyle, i),
      );
      expect(
        lerpedThemeExtension.columnSpacing,
        lerpDouble(themeExtension1.columnSpacing, themeExtension2.columnSpacing, i),
      );
      expect(
        lerpedThemeExtension.rowTextStyle,
        TextStyle.lerp(themeExtension1.rowTextStyle, themeExtension2.rowTextStyle, i),
      );
      expect(
        lerpedThemeExtension.loaderEmptyMessageErrorMessagePadding,
        EdgeInsets.lerp(
          themeExtension1.loaderEmptyMessageErrorMessagePadding,
          themeExtension2.loaderEmptyMessageErrorMessagePadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.emptyMessageTextStyle,
        TextStyle.lerp(
          themeExtension1.emptyMessageTextStyle,
          themeExtension2.emptyMessageTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.errorMessageTextStyle,
        TextStyle.lerp(
          themeExtension1.errorMessageTextStyle,
          themeExtension2.errorMessageTextStyle,
          i,
        ),
      );
    }
  });

  test('MyoroTableThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroTableThemeExtension(\n'
      '  decoration: ${themeExtension1.decoration},\n'
      '  columnTextStyle: ${themeExtension1.columnTextStyle},\n'
      '  columnSpacing: ${themeExtension1.columnSpacing},\n'
      '  rowTextStyle: ${themeExtension1.rowTextStyle},\n'
      '  loaderEmptyMessageErrorMessagePadding: ${themeExtension1.loaderEmptyMessageErrorMessagePadding}\n'
      '  emptyMessageTextStyle: emptyMessageTextStyle{themeExtension1.,\n}'
      '  errorMessageTextStyle: ${themeExtension1.errorMessageTextStyle},\n'
      ');',
    );
  });
}
