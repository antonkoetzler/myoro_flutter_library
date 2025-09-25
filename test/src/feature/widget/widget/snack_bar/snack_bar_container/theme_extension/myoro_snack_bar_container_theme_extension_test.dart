import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSnackBarContainerThemeExtension.builder', () {
    const themeExtension = MyoroSnackBarContainerThemeExtension.builder();
    expect(themeExtension.primaryColor, MyoroColors.transparent);
    expect(themeExtension.behavior, SnackBarBehavior.floating);
    expect(themeExtension.margin, const EdgeInsets.all(10));
    expect(themeExtension.padding, EdgeInsets.zero);
    expect(themeExtension.elevation, 0);
    expect(themeExtension.dismissDirection, DismissDirection.none);
  });

  test('MyoroSnackBarContainerThemeExtension.lerp', () {
    final themeExtension1 = MyoroSnackBarContainerThemeExtension.fake();
    final themeExtension2 = MyoroSnackBarContainerThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.primaryColor,
        Color.lerp(themeExtension1.primaryColor, themeExtension2.primaryColor, i),
      );
      expect(lerpedThemeExtension.behavior, myoroFallbackLerp(themeExtension1.behavior, themeExtension2.behavior, i));
      expect(lerpedThemeExtension.margin, EdgeInsets.lerp(themeExtension1.margin, themeExtension2.margin, i));
      expect(lerpedThemeExtension.padding, EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i));
      expect(lerpedThemeExtension.elevation, lerpDouble(themeExtension1.elevation, themeExtension2.elevation, i));
      expect(
        lerpedThemeExtension.dismissDirection,
        myoroFallbackLerp(themeExtension1.dismissDirection, themeExtension2.dismissDirection, i),
      );
    }
  });
}
