import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MyoroButtonVariantThemeExtension.fake();
  final themeExtension2 = MyoroButtonVariantThemeExtension.fake();

  test('MyoroButtonVariantThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        border: themeExtension2.border,
        primaryIdleBackgroundColor: themeExtension2.primaryIdleBackgroundColor,
        primaryHoverBackgroundColor: themeExtension2.primaryHoverBackgroundColor,
        primaryTapBackgroundColor: themeExtension2.primaryTapBackgroundColor,
        primaryIdleContentColor: themeExtension2.primaryIdleContentColor,
        primaryHoverContentColor: themeExtension2.primaryHoverContentColor,
        primaryTapContentColor: themeExtension2.primaryTapContentColor,
        secondaryIdleBackgroundColor: themeExtension2.secondaryIdleBackgroundColor,
        secondaryHoverBackgroundColor: themeExtension2.secondaryHoverBackgroundColor,
        secondaryTapBackgroundColor: themeExtension2.secondaryTapBackgroundColor,
        secondaryIdleContentColor: themeExtension2.secondaryIdleContentColor,
        secondaryHoverContentColor: themeExtension2.secondaryHoverContentColor,
        secondaryTapContentColor: themeExtension2.secondaryTapContentColor,
      ),
      themeExtension2,
    );
  });

  test('MyoroButtonVariantThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.border,
        BoxBorder.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.primaryIdleBackgroundColor,
        Color.lerp(
          themeExtension1.primaryIdleBackgroundColor,
          themeExtension2.primaryIdleBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.primaryHoverBackgroundColor,
        Color.lerp(
          themeExtension1.primaryHoverBackgroundColor,
          themeExtension2.primaryHoverBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.primaryTapBackgroundColor,
        Color.lerp(
          themeExtension1.primaryTapBackgroundColor,
          themeExtension2.primaryTapBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.primaryIdleContentColor,
        Color.lerp(
          themeExtension1.primaryIdleContentColor,
          themeExtension2.primaryIdleContentColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.primaryHoverContentColor,
        Color.lerp(
          themeExtension1.primaryHoverContentColor,
          themeExtension2.primaryHoverContentColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.primaryTapContentColor,
        Color.lerp(
          themeExtension1.primaryTapContentColor,
          themeExtension2.primaryTapContentColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.secondaryIdleBackgroundColor,
        Color.lerp(
          themeExtension1.secondaryIdleBackgroundColor,
          themeExtension2.secondaryIdleBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.secondaryHoverBackgroundColor,
        Color.lerp(
          themeExtension1.secondaryHoverBackgroundColor,
          themeExtension2.secondaryHoverBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.secondaryTapBackgroundColor,
        Color.lerp(
          themeExtension1.secondaryTapBackgroundColor,
          themeExtension2.secondaryTapBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.secondaryIdleContentColor,
        Color.lerp(
          themeExtension1.secondaryIdleContentColor,
          themeExtension2.secondaryIdleContentColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.secondaryHoverContentColor,
        Color.lerp(
          themeExtension1.secondaryHoverContentColor,
          themeExtension2.secondaryHoverContentColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.secondaryTapContentColor,
        Color.lerp(
          themeExtension1.secondaryTapContentColor,
          themeExtension2.secondaryTapContentColor,
          i,
        ),
      );
    }
  });

  test('MyoroButtonVariantThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroButtonVariantThemeExtension(\n'
      '  border: ${themeExtension1.border},\n'
      '  primaryIdleBackgroundColor: ${themeExtension1.primaryIdleBackgroundColor},\n'
      '  primaryHoverBackgroundColor: ${themeExtension1.primaryHoverBackgroundColor},\n'
      '  primaryTapBackgroundColor: ${themeExtension1.primaryTapBackgroundColor},\n'
      '  primaryIdleContentColor: ${themeExtension1.primaryIdleContentColor},\n'
      '  primaryHoverContentColor: ${themeExtension1.primaryHoverContentColor},\n'
      '  primaryTapContentColor: ${themeExtension1.primaryTapContentColor},\n'
      '  secondaryIdleBackgroundColor: ${themeExtension1.primaryIdleBackgroundColor},\n'
      '  secondaryHoverBackgroundColor: ${themeExtension1.primaryHoverBackgroundColor},\n'
      '  secondaryTapBackgroundColor: ${themeExtension1.primaryTapBackgroundColor},\n'
      '  secondaryIdleContentColor: ${themeExtension1.secondaryIdleContentColor},\n'
      '  secondaryHoverContentColor: ${themeExtension1.secondaryHoverContentColor},\n'
      '  secondaryTapContentColor: ${themeExtension1.secondaryTapContentColor},\n'
      ');',
    );
  });
}
