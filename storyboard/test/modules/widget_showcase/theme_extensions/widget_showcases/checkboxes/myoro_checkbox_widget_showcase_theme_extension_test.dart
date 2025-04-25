import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroCheckboxWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroCheckboxWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroCheckboxWidgetShowcaseThemeExtension.fake();

  test('MyoroCheckboxWidgetShowcaseThemeExtension.copyWith', () {
    MyoroCheckboxWidgetShowcaseThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      labelTextStyleOptionWidth: themeExtension2.labelTextStyleOptionWidth,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroCheckboxWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.labelTextStyleOptionWidth,
        lerpDouble(
          themeExtension1.labelTextStyleOptionWidth,
          themeExtension2.labelTextStyleOptionWidth,
          i,
        ),
      );
    }
  });
}
