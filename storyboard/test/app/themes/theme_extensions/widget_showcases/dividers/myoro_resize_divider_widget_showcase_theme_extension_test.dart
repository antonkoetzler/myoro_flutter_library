import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroResizeDividerWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroResizeDividerWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroResizeDividerWidgetShowcaseThemeExtension.fake();

  test('MyoroResizeDividerWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      containerColor: themeExtension2.containerColor,
      areYouSillyPadding: themeExtension2.areYouSillyPadding,
    );
    expect(copiedThemeExtension.containerColor, themeExtension2.containerColor);
    expect(copiedThemeExtension.areYouSillyPadding,
        themeExtension2.areYouSillyPadding);
  });

  test('MyoroResizeDividerWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.containerColor,
        Color.lerp(
            themeExtension1.containerColor, themeExtension2.containerColor, i),
      );
      expect(
        lerpedThemeExtension.areYouSillyPadding,
        EdgeInsets.lerp(themeExtension1.areYouSillyPadding,
            themeExtension2.areYouSillyPadding, i),
      );
    }
  });
}
