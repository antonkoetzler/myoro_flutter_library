import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDrawerThemeExtension].
void main() {
  late final MyoroDrawerThemeExtension themeExtension1;
  late final MyoroDrawerThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroDrawerThemeExtension.fake();
    themeExtension2 = MyoroDrawerThemeExtension.fake();
  });

  test('MyoroDrawerThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      drawerPadding: themeExtension2.drawerPadding,
      drawerContentPadding: themeExtension2.drawerContentPadding,
      drawerShape: themeExtension2.drawerShape,
      titleContentDividerPadding: themeExtension2.titleContentDividerPadding,
      titleTextStyle: themeExtension2.titleTextStyle,
      closeButtonDrawerIcon: themeExtension2.closeButtonDrawerIcon,
      closeButtonEndDrawerIcon: themeExtension2.closeButtonEndDrawerIcon,
      closeButtonBackgroundColor: themeExtension2.closeButtonBackgroundColor,
      closeButtonBordered: themeExtension2.closeButtonBordered,
    );
    expect(copiedThemeExtension.drawerPadding, themeExtension2.drawerPadding);
    expect(
      copiedThemeExtension.drawerContentPadding,
      themeExtension2.drawerContentPadding,
    );
    expect(copiedThemeExtension.drawerShape, themeExtension2.drawerShape);
    expect(
      copiedThemeExtension.titleContentDividerPadding,
      themeExtension2.titleContentDividerPadding,
    );
    expect(copiedThemeExtension.titleTextStyle, themeExtension2.titleTextStyle);
    expect(
      copiedThemeExtension.closeButtonDrawerIcon,
      themeExtension2.closeButtonDrawerIcon,
    );
    expect(
      copiedThemeExtension.closeButtonEndDrawerIcon,
      themeExtension2.closeButtonEndDrawerIcon,
    );
    expect(
      copiedThemeExtension.closeButtonBackgroundColor,
      themeExtension2.closeButtonBackgroundColor,
    );
    expect(
      copiedThemeExtension.closeButtonBordered,
      themeExtension2.closeButtonBordered,
    );
  });

  test('MyoroDrawerThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.drawerPadding,
        EdgeInsets.lerp(
          themeExtension1.drawerPadding,
          themeExtension2.drawerPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.drawerContentPadding,
        EdgeInsets.lerp(
          themeExtension1.drawerContentPadding,
          themeExtension2.drawerContentPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.drawerShape,
        ShapeBorder.lerp(
          themeExtension1.drawerShape,
          themeExtension2.drawerShape,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleContentDividerPadding,
        EdgeInsets.lerp(
          themeExtension1.titleContentDividerPadding,
          themeExtension2.titleContentDividerPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(
          themeExtension1.titleTextStyle,
          themeExtension2.titleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonDrawerIcon,
        myoroLerp(
          themeExtension1.closeButtonDrawerIcon,
          themeExtension2.closeButtonDrawerIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonEndDrawerIcon,
        myoroLerp(
          themeExtension1.closeButtonEndDrawerIcon,
          themeExtension2.closeButtonEndDrawerIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonBackgroundColor,
        Color.lerp(
          themeExtension1.closeButtonBackgroundColor,
          themeExtension2.closeButtonBackgroundColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.closeButtonBordered,
        myoroLerp(
          themeExtension1.closeButtonBordered,
          themeExtension2.closeButtonBordered,
          i,
        ),
      );
    }
  });
}
