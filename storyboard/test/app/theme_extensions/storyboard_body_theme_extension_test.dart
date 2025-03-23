import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [StoryboardBodyThemeExtension].
void main() {
  late final StoryboardBodyThemeExtension themeExtension1, themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    themeExtension1 = StoryboardBodyThemeExtension.fake();
    themeExtension2 = StoryboardBodyThemeExtension.fake();
  });

  test('StoryboardBodyThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      widgetListingCategoryPadding:
          themeExtension2.widgetListingCategoryPadding,
      widgetListingCategorySpacing:
          themeExtension2.widgetListingCategorySpacing,
      widgetListingCategoryDividerPadding:
          themeExtension2.widgetListingCategoryDividerPadding,
      widgetListingCategoryDividerShortValue:
          themeExtension2.widgetListingCategoryDividerShortValue,
      widgetListingCategoryDropdownButtonTextStyle:
          themeExtension2.widgetListingCategoryDropdownButtonTextStyle,
      widgetListingCategoryDropdownButtonUnopenedIcon:
          themeExtension2.widgetListingCategoryDropdownButtonUnopenedIcon,
      widgetListingCategoryDropdownButtonOpenedIcon:
          themeExtension2.widgetListingCategoryDropdownButtonOpenedIcon,
      widgetListingCategoryWidgetButtonContentCentered:
          themeExtension2.widgetListingCategoryWidgetButtonContentCentered,
      widgetListingCategoryWidgetButtonTextStyle:
          themeExtension2.widgetListingCategoryWidgetButtonTextStyle,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryPadding,
      themeExtension2.widgetListingCategoryPadding,
    );
    expect(
      copiedThemeExtension.widgetListingCategorySpacing,
      themeExtension2.widgetListingCategorySpacing,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryDividerPadding,
      themeExtension2.widgetListingCategoryDividerPadding,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryDividerShortValue,
      themeExtension2.widgetListingCategoryDividerShortValue,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryDropdownButtonTextStyle,
      themeExtension2.widgetListingCategoryDropdownButtonTextStyle,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryDropdownButtonUnopenedIcon,
      themeExtension2.widgetListingCategoryDropdownButtonUnopenedIcon,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryDropdownButtonOpenedIcon,
      themeExtension2.widgetListingCategoryDropdownButtonOpenedIcon,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryWidgetButtonContentCentered,
      themeExtension2.widgetListingCategoryWidgetButtonContentCentered,
    );
    expect(
      copiedThemeExtension.widgetListingCategoryWidgetButtonTextStyle,
      themeExtension2.widgetListingCategoryWidgetButtonTextStyle,
    );
  });

  test('StoryboardBodyThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetListingCategoryPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetListingCategoryPadding,
          themeExtension2.widgetListingCategoryPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategorySpacing,
        lerpDouble(
          themeExtension1.widgetListingCategorySpacing,
          themeExtension2.widgetListingCategorySpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryDividerPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetListingCategoryDividerPadding,
          themeExtension2.widgetListingCategoryDividerPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryDividerShortValue,
        lerpDouble(
          themeExtension1.widgetListingCategoryDividerShortValue,
          themeExtension2.widgetListingCategoryDividerShortValue,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryDropdownButtonTextStyle,
        TextStyle.lerp(
          themeExtension1.widgetListingCategoryDropdownButtonTextStyle,
          themeExtension2.widgetListingCategoryDropdownButtonTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryDropdownButtonUnopenedIcon,
        myoroLerp(
          themeExtension1.widgetListingCategoryDropdownButtonUnopenedIcon,
          themeExtension2.widgetListingCategoryDropdownButtonUnopenedIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryDropdownButtonOpenedIcon,
        myoroLerp(
          themeExtension1.widgetListingCategoryDropdownButtonOpenedIcon,
          themeExtension2.widgetListingCategoryDropdownButtonOpenedIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryWidgetButtonContentCentered,
        myoroLerp(
          themeExtension1.widgetListingCategoryWidgetButtonContentCentered,
          themeExtension2.widgetListingCategoryWidgetButtonContentCentered,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetListingCategoryWidgetButtonTextStyle,
        TextStyle.lerp(
          themeExtension1.widgetListingCategoryWidgetButtonTextStyle,
          themeExtension2.widgetListingCategoryWidgetButtonTextStyle,
          i,
        ),
      );
    }
  });
}
