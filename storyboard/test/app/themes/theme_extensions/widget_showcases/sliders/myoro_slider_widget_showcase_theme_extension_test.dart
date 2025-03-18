import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroSliderWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroSliderWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroSliderWidgetShowcaseThemeExtension.fake();

  test('MyoroSliderWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      widgetSize: themeExtension2.widgetSize,
      hiddenKittyContainerColor: themeExtension2.hiddenKittyContainerColor,
    );
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
    expect(copiedThemeExtension.widgetSize, themeExtension2.widgetSize);
    expect(
      copiedThemeExtension.hiddenKittyContainerColor,
      themeExtension2.hiddenKittyContainerColor,
    );
  });

  test('MyoroSliderWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.widgetSize,
        lerpDouble(themeExtension1.widgetSize, themeExtension2.widgetSize, i),
      );
      expect(
        lerpedThemeExtension.hiddenKittyContainerColor,
        Color.lerp(
          themeExtension1.hiddenKittyContainerColor,
          themeExtension2.hiddenKittyContainerColor,
          i,
        ),
      );
    }
  });
}
