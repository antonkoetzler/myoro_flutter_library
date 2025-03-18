import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroSnackBarContainerThemeExtension].
void main() {
  final themeExtension1 = MyoroSnackBarContainerThemeExtension.fake();
  final themeExtension2 = MyoroSnackBarContainerThemeExtension.fake();

  test('MyoroSnackBarContainerThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      primaryColor: themeExtension2.primaryColor,
      behavior: themeExtension2.behavior,
      margin: themeExtension2.margin,
      padding: themeExtension2.padding,
      elevation: themeExtension2.elevation,
      dismissDirection: themeExtension2.dismissDirection,
      duration: themeExtension2.duration,
    );
    expect(copiedThemeExtension.primaryColor, themeExtension2.primaryColor);
    expect(copiedThemeExtension.behavior, themeExtension2.behavior);
    expect(copiedThemeExtension.margin, themeExtension2.margin);
    expect(copiedThemeExtension.padding, themeExtension2.padding);
    expect(copiedThemeExtension.elevation, themeExtension2.elevation);
    expect(
      copiedThemeExtension.dismissDirection,
      themeExtension2.dismissDirection,
    );
    expect(copiedThemeExtension.duration, themeExtension2.duration);
  });

  test('MyoroSnackBarContainerThemeExtension.lerp', () {
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
        lerpedThemeExtension.behavior,
        myoroLerp(themeExtension1.behavior, themeExtension2.behavior, i),
      );
      expect(
        lerpedThemeExtension.margin,
        EdgeInsets.lerp(themeExtension1.margin, themeExtension2.margin, i),
      );
      expect(
        lerpedThemeExtension.padding,
        EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i),
      );
      expect(
        lerpedThemeExtension.elevation,
        lerpDouble(themeExtension1.elevation, themeExtension2.elevation, i),
      );
      expect(
        lerpedThemeExtension.dismissDirection,
        myoroLerp(
          themeExtension1.dismissDirection,
          themeExtension2.dismissDirection,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.duration,
        myoroLerp(themeExtension1.duration, themeExtension2.duration, i),
      );
    }
  });
}
