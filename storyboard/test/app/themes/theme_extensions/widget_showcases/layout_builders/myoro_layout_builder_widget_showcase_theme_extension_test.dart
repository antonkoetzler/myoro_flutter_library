import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroLayoutBuilderWidgetShowcaseThemeExtension].
void main() {
  late final MyoroLayoutBuilderWidgetShowcaseThemeExtension themeExtension1,
      themeExtension2;

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroLayoutBuilderWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroLayoutBuilderWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroLayoutBuilderWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      textStyle: themeExtension2.textStyle,
      descriptionWidth: themeExtension2.descriptionWidth,
    );
    expect(copiedThemeExtension.textStyle, themeExtension2.textStyle);
    expect(
      copiedThemeExtension.descriptionWidth,
      themeExtension2.descriptionWidth,
    );
  });

  test('MyoroLayoutBuilderWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.textStyle,
        TextStyle.lerp(themeExtension1.textStyle, themeExtension2.textStyle, i),
      );
      expect(
        lerpedThemeExtension.descriptionWidth,
        lerpDouble(
          themeExtension1.descriptionWidth,
          themeExtension2.descriptionWidth,
          i,
        ),
      );
    }
  });
}
