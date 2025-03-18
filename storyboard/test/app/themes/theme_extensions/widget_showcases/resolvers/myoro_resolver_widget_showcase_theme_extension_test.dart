import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroResolverWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroResolverWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroResolverWidgetShowcaseThemeExtension.fake();

  test('MyoroResolverWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      buttonBordered: themeExtension2.buttonBordered,
      buttonTextAlign: themeExtension2.buttonTextAlign,
      spacing: themeExtension2.spacing,
    );
    expect(copiedThemeExtension.buttonBordered, themeExtension2.buttonBordered);
    expect(
        copiedThemeExtension.buttonTextAlign, themeExtension2.buttonTextAlign);
    expect(copiedThemeExtension.spacing, themeExtension2.spacing);
  });

  test('MyoroResolverWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.buttonBordered,
        myoroLerp(
            themeExtension1.buttonBordered, themeExtension2.buttonBordered, i),
      );
      expect(
        lerpedThemeExtension.buttonTextAlign,
        myoroLerp(themeExtension1.buttonTextAlign,
            themeExtension2.buttonTextAlign, i),
      );
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });
}
