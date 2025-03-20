import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [StoryboardBody].
final class StoryboardBodyThemeExtension
    extends ThemeExtension<StoryboardBodyThemeExtension> {
  /// Padding of the content within [_WidgetListingCategory].
  final EdgeInsets widgetListingCategoryPadding;

  /// Spacing in between the items in [_WidgetListingCategory].
  final double widgetListingCategorySpacing;

  /// Padding of the divider within [_WidgetListingCategory]s.
  final EdgeInsets widgetListingCategoryDividerPadding;

  /// Short value of the [MyoroBasicDivider] in between [_WidgetListingCategoryDropdownButton]s.
  final double widgetListingCategoryDividerShortValue;

  /// Text style of [_WidgetListingCategoryDropdownButton].
  final TextStyle widgetListingCategoryDropdownButtonTextStyle;

  /// Icon of the unopened [_WidgetListingCategoryDropdownButton].
  final IconData widgetListingCategoryDropdownButtonUnopenedIcon;

  /// Icon of the opened [_WidgetListingCategoryDropdownButton].
  final IconData widgetListingCategoryDropdownButtonOpenedIcon;

  /// Alignment of the text into of [_WidgetListingCategoryWidgetButton].
  final MainAxisAlignment widgetListingCategoryWidgetButtonContentCentered;

  /// Text style of [_WidgetListingCategoryWidgetButton].
  final TextStyle widgetListingCategoryWidgetButtonTextStyle;

  const StoryboardBodyThemeExtension({
    required this.widgetListingCategoryPadding,
    required this.widgetListingCategorySpacing,
    required this.widgetListingCategoryDividerPadding,
    required this.widgetListingCategoryDividerShortValue,
    required this.widgetListingCategoryDropdownButtonTextStyle,
    required this.widgetListingCategoryDropdownButtonUnopenedIcon,
    required this.widgetListingCategoryDropdownButtonOpenedIcon,
    required this.widgetListingCategoryWidgetButtonContentCentered,
    required this.widgetListingCategoryWidgetButtonTextStyle,
  });

  StoryboardBodyThemeExtension.fake()
      : widgetListingCategoryPadding = EdgeInsets.all(
          faker.randomGenerator.decimal(),
        ),
        widgetListingCategorySpacing = faker.randomGenerator.decimal(),
        widgetListingCategoryDividerPadding = EdgeInsets.all(
          faker.randomGenerator.decimal(),
        ),
        widgetListingCategoryDividerShortValue =
            faker.randomGenerator.decimal(),
        widgetListingCategoryDropdownButtonTextStyle =
            MyoroTypographyTheme.instance.randomTextStyle,
        widgetListingCategoryDropdownButtonUnopenedIcon =
            kMyoroTestIcons[faker.randomGenerator.integer(
          kMyoroTestIcons.length,
        )],
        widgetListingCategoryDropdownButtonOpenedIcon =
            kMyoroTestIcons[faker.randomGenerator.integer(
          kMyoroTestIcons.length,
        )],
        widgetListingCategoryWidgetButtonContentCentered =
            MainAxisAlignment.values[faker.randomGenerator.integer(
          MainAxisAlignment.values.length,
        )],
        widgetListingCategoryWidgetButtonTextStyle =
            MyoroTypographyTheme.instance.randomTextStyle;

  @override
  StoryboardBodyThemeExtension copyWith({
    EdgeInsets? widgetListingCategoryPadding,
    double? widgetListingCategorySpacing,
    EdgeInsets? widgetListingCategoryDividerPadding,
    double? widgetListingCategoryDividerShortValue,
    TextStyle? widgetListingCategoryDropdownButtonTextStyle,
    IconData? widgetListingCategoryDropdownButtonUnopenedIcon,
    IconData? widgetListingCategoryDropdownButtonOpenedIcon,
    MainAxisAlignment? widgetListingCategoryWidgetButtonContentCentered,
    TextStyle? widgetListingCategoryWidgetButtonTextStyle,
  }) {
    return StoryboardBodyThemeExtension(
      widgetListingCategoryPadding:
          widgetListingCategoryPadding ?? this.widgetListingCategoryPadding,
      widgetListingCategorySpacing:
          widgetListingCategorySpacing ?? this.widgetListingCategorySpacing,
      widgetListingCategoryDividerPadding:
          widgetListingCategoryDividerPadding ??
              this.widgetListingCategoryDividerPadding,
      widgetListingCategoryDividerShortValue:
          widgetListingCategoryDividerShortValue ??
              this.widgetListingCategoryDividerShortValue,
      widgetListingCategoryDropdownButtonTextStyle:
          widgetListingCategoryDropdownButtonTextStyle ??
              this.widgetListingCategoryDropdownButtonTextStyle,
      widgetListingCategoryDropdownButtonUnopenedIcon:
          widgetListingCategoryDropdownButtonUnopenedIcon ??
              this.widgetListingCategoryDropdownButtonUnopenedIcon,
      widgetListingCategoryDropdownButtonOpenedIcon:
          widgetListingCategoryDropdownButtonOpenedIcon ??
              this.widgetListingCategoryDropdownButtonOpenedIcon,
      widgetListingCategoryWidgetButtonContentCentered:
          widgetListingCategoryWidgetButtonContentCentered ??
              this.widgetListingCategoryWidgetButtonContentCentered,
      widgetListingCategoryWidgetButtonTextStyle:
          widgetListingCategoryWidgetButtonTextStyle ??
              this.widgetListingCategoryWidgetButtonTextStyle,
    );
  }

  @override
  StoryboardBodyThemeExtension lerp(
    covariant ThemeExtension<StoryboardBodyThemeExtension>? other,
    double t,
  ) {
    if (other is! StoryboardBodyThemeExtension) return this;
    return copyWith(
      widgetListingCategoryPadding: EdgeInsets.lerp(
        widgetListingCategoryPadding,
        other.widgetListingCategoryPadding,
        t,
      ),
      widgetListingCategorySpacing: lerpDouble(
        widgetListingCategorySpacing,
        other.widgetListingCategorySpacing,
        t,
      ),
      widgetListingCategoryDividerPadding: EdgeInsets.lerp(
        widgetListingCategoryDividerPadding,
        other.widgetListingCategoryDividerPadding,
        t,
      ),
      widgetListingCategoryDividerShortValue: lerpDouble(
        widgetListingCategoryDividerShortValue,
        other.widgetListingCategoryDividerShortValue,
        t,
      ),
      widgetListingCategoryDropdownButtonTextStyle: TextStyle.lerp(
        widgetListingCategoryDropdownButtonTextStyle,
        other.widgetListingCategoryDropdownButtonTextStyle,
        t,
      ),
      widgetListingCategoryDropdownButtonUnopenedIcon: myoroLerp(
        widgetListingCategoryDropdownButtonUnopenedIcon,
        other.widgetListingCategoryDropdownButtonUnopenedIcon,
        t,
      ),
      widgetListingCategoryDropdownButtonOpenedIcon: myoroLerp(
        widgetListingCategoryDropdownButtonOpenedIcon,
        other.widgetListingCategoryDropdownButtonOpenedIcon,
        t,
      ),
      widgetListingCategoryWidgetButtonContentCentered: myoroLerp(
        widgetListingCategoryWidgetButtonContentCentered,
        other.widgetListingCategoryWidgetButtonContentCentered,
        t,
      ),
      widgetListingCategoryWidgetButtonTextStyle: TextStyle.lerp(
        widgetListingCategoryWidgetButtonTextStyle,
        other.widgetListingCategoryWidgetButtonTextStyle,
        t,
      ),
    );
  }
}
