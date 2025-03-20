import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit testd of [MyoroBarGraphThemeExtension].
void main() {
  late final MyoroBarGraphThemeExtension themeExtension1;
  late final MyoroBarGraphThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroBarGraphThemeExtension.fake();
    themeExtension2 = MyoroBarGraphThemeExtension.fake();
  });

  test('MyoroBarGraphThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      border: themeExtension2.border,
      barColor: themeExtension2.barColor,
      barBorderRadius: themeExtension2.barBorderRadius,
      sideTitleTextStyle: themeExtension2.sideTitleTextStyle,
      sideTitleInterval: themeExtension2.sideTitleInterval,
      verticalSideTitleReversedSize:
          themeExtension2.verticalSideTitleReversedSize,
      horizontalSideTitleReversedSize:
          themeExtension2.horizontalSideTitleReversedSize,
    );
    expect(copiedThemeExtension.border, themeExtension2.border);
    expect(copiedThemeExtension.barColor, themeExtension2.barColor);
    expect(
      copiedThemeExtension.barBorderRadius,
      themeExtension2.barBorderRadius,
    );
    expect(
      copiedThemeExtension.sideTitleTextStyle,
      themeExtension2.sideTitleTextStyle,
    );
    expect(
      copiedThemeExtension.sideTitleInterval,
      themeExtension2.sideTitleInterval,
    );
    expect(
      copiedThemeExtension.verticalSideTitleReversedSize,
      themeExtension2.verticalSideTitleReversedSize,
    );
    expect(
      copiedThemeExtension.horizontalSideTitleReversedSize,
      themeExtension2.horizontalSideTitleReversedSize,
    );
  });

  test('MyoroBarGraphThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.border,
        Border.lerp(themeExtension1.border, themeExtension2.border, i),
      );
      expect(
        lerpedThemeExtension.barColor,
        Color.lerp(themeExtension1.barColor, themeExtension2.barColor, i),
      );
      expect(
        lerpedThemeExtension.barBorderRadius,
        BorderRadius.lerp(
          themeExtension1.barBorderRadius,
          themeExtension2.barBorderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.sideTitleTextStyle,
        TextStyle.lerp(
          themeExtension1.sideTitleTextStyle,
          themeExtension2.sideTitleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.sideTitleInterval,
        lerpDouble(
          themeExtension1.sideTitleInterval,
          themeExtension2.sideTitleInterval,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.verticalSideTitleReversedSize,
        lerpDouble(
          themeExtension1.verticalSideTitleReversedSize,
          themeExtension2.verticalSideTitleReversedSize,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.horizontalSideTitleReversedSize,
        lerpDouble(
          themeExtension1.horizontalSideTitleReversedSize,
          themeExtension2.horizontalSideTitleReversedSize,
          i,
        ),
      );
    }
  });
}
