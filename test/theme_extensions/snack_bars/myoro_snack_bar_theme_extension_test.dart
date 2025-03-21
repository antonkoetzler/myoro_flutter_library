import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroSnackBarThemeExtension].
void main() {
  late final MyoroSnackBarThemeExtension themeExtension1;
  late final MyoroSnackBarThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroSnackBarThemeExtension.fake();
    themeExtension2 = MyoroSnackBarThemeExtension.fake();
  });

  test('MyoroSnackBarThemeExtension.copyWith', () {
    MyoroSnackBarThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      standardBorderColor: themeExtension2.standardBorderColor,
      attentionBorderColor: themeExtension2.attentionBorderColor,
      successBorderColor: themeExtension2.successBorderColor,
      errorBorderColor: themeExtension2.errorBorderColor,
      borderWidth: themeExtension2.borderWidth,
      borderRadius: themeExtension2.borderRadius,
      padding: themeExtension2.padding,
      contentCloseButtonSpacing: themeExtension2.contentCloseButtonSpacing,
      messageTextStyle: themeExtension2.messageTextStyle,
      closeButtonIcon: themeExtension2.closeButtonIcon,
      closeButtonIconSize: themeExtension2.closeButtonIconSize,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroSnackBarThemeExtension.lerp', () {
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
        lerpedThemeExtension.standardBorderColor,
        Color.lerp(
          themeExtension1.standardBorderColor,
          themeExtension2.standardBorderColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.attentionBorderColor,
        Color.lerp(
          themeExtension1.attentionBorderColor,
          themeExtension2.attentionBorderColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.successBorderColor,
        Color.lerp(
          themeExtension1.successBorderColor,
          themeExtension2.successBorderColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.errorBorderColor,
        Color.lerp(
          themeExtension1.errorBorderColor,
          themeExtension2.errorBorderColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.borderWidth,
        lerpDouble(themeExtension1.borderWidth, themeExtension2.borderWidth, i),
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
        lerpedThemeExtension.padding,
        EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i),
      );
      expect(
        lerpedThemeExtension.contentCloseButtonSpacing,
        lerpDouble(
          themeExtension1.contentCloseButtonSpacing,
          themeExtension2.contentCloseButtonSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.messageTextStyle,
        TextStyle.lerp(
          themeExtension1.messageTextStyle,
          themeExtension2.messageTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonIcon,
        myoroLerp(
          themeExtension1.closeButtonIcon,
          themeExtension2.closeButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonIconSize,
        lerpDouble(
          themeExtension1.closeButtonIconSize,
          themeExtension2.closeButtonIconSize,
          i,
        ),
      );
    }
  });
}
