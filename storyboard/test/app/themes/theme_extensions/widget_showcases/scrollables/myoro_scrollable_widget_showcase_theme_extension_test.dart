import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroScrollableWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroScrollableWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroScrollableWidgetShowcaseThemeExtension.fake();

  test('MyoroScrollableWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      itemBordered: themeExtension2.itemBordered,
      itemPadding: themeExtension2.itemPadding,
    );
    expect(copiedThemeExtension.itemBordered, themeExtension2.itemBordered);
    expect(copiedThemeExtension.itemPadding, themeExtension2.itemPadding);
  });

  test('MyoroScrollableWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.itemBordered,
        myoroLerp(themeExtension1.itemBordered, themeExtension2.itemBordered, i),
      );
      expect(
        lerpedThemeExtension.itemPadding,
        EdgeInsets.lerp(themeExtension1.itemPadding, themeExtension2.itemPadding, i),
      );
    }
  });
}
