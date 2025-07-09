import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCarouselThemeExtension.builder', () {
    const themeExtension = MyoroCarouselThemeExtension.builder();
    expect(themeExtension.previousItemButtonIcon, Icons.keyboard_arrow_left);
    expect(themeExtension.nextItemButtonIcon, Icons.keyboard_arrow_right);
  });

  test('MyoroCarouselThemeExtension.lerp', () {
    final themeExtension1 = MyoroCarouselThemeExtension.fake();
    final themeExtension2 = MyoroCarouselThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.previousItemButtonIcon,
        myoroLerp(themeExtension1.previousItemButtonIcon, themeExtension2.previousItemButtonIcon, i),
      );
      expect(
        lerpedThemeExtension.nextItemButtonIcon,
        myoroLerp(themeExtension1.nextItemButtonIcon, themeExtension2.nextItemButtonIcon, i),
      );
    }
  });
}
