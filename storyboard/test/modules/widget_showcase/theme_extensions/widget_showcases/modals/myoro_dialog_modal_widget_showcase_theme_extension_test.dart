import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroDialogModalWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroDialogModalWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroDialogModalWidgetShowcaseThemeExtension.fake();

  test('MyoroDialogModalWidgetShowcaseThemeExtension.copyWith', () {
    MyoroDialogModalWidgetShowcaseThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      childBorderRadius: themeExtension2.childBorderRadius,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroDialogModalWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.childBorderRadius,
        BorderRadius.lerp(
          themeExtension1.childBorderRadius,
          themeExtension2.childBorderRadius,
          i,
        ),
      );
    }
  });
}
