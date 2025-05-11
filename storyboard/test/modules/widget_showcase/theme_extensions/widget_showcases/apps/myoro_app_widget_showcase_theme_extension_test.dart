import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroAppWidgetShowcaseThemeExtension].
void main() {
  late final MyoroAppWidgetShowcaseThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = MyoroAppWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroAppWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroAppWidgetShowcaseThemeExtension.copyWith', () {
    MyoroAppWidgetShowcaseThemeExtension copiedThemeExtension = themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      appBarContentColor: themeExtension2.appBarContentColor,
      appBarLogoIcon: themeExtension2.appBarLogoIcon,
      appBarTextStyle: themeExtension2.appBarTextStyle,
      appBarMenuButtonIcon: themeExtension2.appBarMenuButtonIcon,
      appBarSpacing: themeExtension2.appBarSpacing,
      themeModeOptionButtonBordered: themeExtension2.themeModeOptionButtonBordered,
      themeModeOptionButtonDarkModeIcon: themeExtension2.themeModeOptionButtonDarkModeIcon,
      themeModeOptionButtonLightModeIcon: themeExtension2.themeModeOptionButtonLightModeIcon,
      themeModeOptionTextStyle: themeExtension2.themeModeOptionTextStyle,
      themeModeOptionSpacing: themeExtension2.themeModeOptionSpacing,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroAppWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.appBarContentColor,
        Color.lerp(themeExtension1.appBarContentColor, themeExtension2.appBarContentColor, i),
      );
      expect(
        lerpedThemeExtension.appBarLogoIcon,
        myoroLerp(themeExtension1.appBarLogoIcon, themeExtension2.appBarLogoIcon, i),
      );
      expect(
        lerpedThemeExtension.appBarTextStyle,
        TextStyle.lerp(themeExtension1.appBarTextStyle, themeExtension2.appBarTextStyle, i),
      );
      expect(
        lerpedThemeExtension.appBarMenuButtonIcon,
        myoroLerp(themeExtension1.appBarMenuButtonIcon, themeExtension2.appBarMenuButtonIcon, i),
      );
      expect(
        lerpedThemeExtension.appBarSpacing,
        lerpDouble(themeExtension1.appBarSpacing, themeExtension2.appBarSpacing, i),
      );
      expect(
        lerpedThemeExtension.themeModeOptionButtonBordered,
        myoroLerp(
          themeExtension1.themeModeOptionButtonBordered,
          themeExtension2.themeModeOptionButtonBordered,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.themeModeOptionButtonDarkModeIcon,
        myoroLerp(
          themeExtension1.themeModeOptionButtonDarkModeIcon,
          themeExtension2.themeModeOptionButtonDarkModeIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.themeModeOptionButtonLightModeIcon,
        myoroLerp(
          themeExtension1.themeModeOptionButtonLightModeIcon,
          themeExtension2.themeModeOptionButtonLightModeIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.themeModeOptionTextStyle,
        TextStyle.lerp(
          themeExtension1.themeModeOptionTextStyle,
          themeExtension2.themeModeOptionTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.themeModeOptionSpacing,
        lerpDouble(
          themeExtension1.themeModeOptionSpacing,
          themeExtension2.themeModeOptionSpacing,
          i,
        ),
      );
    }
  });
}
