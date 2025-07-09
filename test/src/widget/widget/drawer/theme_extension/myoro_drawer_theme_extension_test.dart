import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDrawerThemeExtension.builder', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroDrawerThemeExtension.builder(colorScheme, textTheme);
    expect(themeExtension.drawerPadding, const EdgeInsets.all(20));
    expect(themeExtension.drawerContentPadding, const EdgeInsets.all(10));
    expect(
      themeExtension.drawerShape,
      RoundedRectangleBorder(
        side: BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
    );
    expect(themeExtension.titleContentDividerPadding, const EdgeInsets.only(top: 4, bottom: 10));
    expect(themeExtension.titleTextStyle, textTheme.titleLarge!);
    expect(themeExtension.closeButtonDrawerIcon, Icons.keyboard_arrow_left);
    expect(themeExtension.closeButtonEndDrawerIcon, Icons.keyboard_arrow_right);
  });

  test('MyoroDrawerThemeExtension.lerp', () {
    final themeExtension1 = MyoroDrawerThemeExtension.fake();
    final themeExtension2 = MyoroDrawerThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.drawerPadding,
        EdgeInsets.lerp(themeExtension1.drawerPadding, themeExtension2.drawerPadding, i),
      );
      expect(
        lerpedThemeExtension.drawerContentPadding,
        EdgeInsets.lerp(themeExtension1.drawerContentPadding, themeExtension2.drawerContentPadding, i),
      );
      expect(
        lerpedThemeExtension.drawerShape,
        ShapeBorder.lerp(themeExtension1.drawerShape, themeExtension2.drawerShape, i),
      );
      expect(
        lerpedThemeExtension.titleContentDividerPadding,
        EdgeInsets.lerp(themeExtension1.titleContentDividerPadding, themeExtension2.titleContentDividerPadding, i),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(themeExtension1.titleTextStyle, themeExtension2.titleTextStyle, i),
      );
      expect(
        lerpedThemeExtension.closeButtonDrawerIcon,
        myoroLerp(themeExtension1.closeButtonDrawerIcon, themeExtension2.closeButtonDrawerIcon, i),
      );
      expect(
        lerpedThemeExtension.closeButtonEndDrawerIcon,
        myoroLerp(themeExtension1.closeButtonEndDrawerIcon, themeExtension2.closeButtonEndDrawerIcon, i),
      );
    }
  });
}
