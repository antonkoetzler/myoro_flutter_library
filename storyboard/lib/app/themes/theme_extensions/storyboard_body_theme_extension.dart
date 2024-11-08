import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [StoryboardBody].
final class StoryboardBodyThemeExtension extends ThemeExtension<StoryboardBodyThemeExtension> {
  /// Minimum width of the side bar.
  final double sideBarMinWidth;

  /// Padding of the content within [_WidgetListingCategory].
  final EdgeInsets widgetListingCategoryPadding;

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
    required this.sideBarMinWidth,
    required this.widgetListingCategoryPadding,
    required this.widgetListingCategoryDividerPadding,
    required this.widgetListingCategoryDividerShortValue,
    required this.widgetListingCategoryDropdownButtonTextStyle,
    required this.widgetListingCategoryDropdownButtonUnopenedIcon,
    required this.widgetListingCategoryDropdownButtonOpenedIcon,
    required this.widgetListingCategoryWidgetButtonContentCentered,
    required this.widgetListingCategoryWidgetButtonTextStyle,
  });

  @override
  StoryboardBodyThemeExtension copyWith({
    double? sideBarMinWidth,
    EdgeInsets? widgetListingCategoryPadding,
    EdgeInsets? widgetListingCategoryDividerPadding,
    double? widgetListingCategoryDividerShortValue,
    TextStyle? widgetListingCategoryDropdownButtonTextStyle,
    IconData? widgetListingCategoryDropdownButtonUnopenedIcon,
    IconData? widgetListingCategoryDropdownButtonOpenedIcon,
    MainAxisAlignment? widgetListingCategoryWidgetButtonContentCentered,
    TextStyle? widgetListingCategoryWidgetButtonTextStyle,
  }) {
    return StoryboardBodyThemeExtension(
      sideBarMinWidth: sideBarMinWidth ?? this.sideBarMinWidth,
      widgetListingCategoryPadding: widgetListingCategoryPadding ?? this.widgetListingCategoryPadding,
      widgetListingCategoryDividerPadding: widgetListingCategoryDividerPadding ?? this.widgetListingCategoryDividerPadding,
      widgetListingCategoryDividerShortValue: widgetListingCategoryDividerShortValue ?? this.widgetListingCategoryDividerShortValue,
      widgetListingCategoryDropdownButtonTextStyle: widgetListingCategoryDropdownButtonTextStyle ?? this.widgetListingCategoryDropdownButtonTextStyle,
      widgetListingCategoryDropdownButtonUnopenedIcon: widgetListingCategoryDropdownButtonUnopenedIcon ?? this.widgetListingCategoryDropdownButtonUnopenedIcon,
      widgetListingCategoryDropdownButtonOpenedIcon: widgetListingCategoryDropdownButtonOpenedIcon ?? this.widgetListingCategoryDropdownButtonOpenedIcon,
      widgetListingCategoryWidgetButtonContentCentered:
          widgetListingCategoryWidgetButtonContentCentered ?? this.widgetListingCategoryWidgetButtonContentCentered,
      widgetListingCategoryWidgetButtonTextStyle: widgetListingCategoryWidgetButtonTextStyle ?? this.widgetListingCategoryWidgetButtonTextStyle,
    );
  }

  @override
  StoryboardBodyThemeExtension lerp(StoryboardBodyThemeExtension? other, double t) {
    if (other is! StoryboardBodyThemeExtension) return this;
    return copyWith(
      sideBarMinWidth: lerpDouble(sideBarMinWidth, other.sideBarMinWidth, t),
      widgetListingCategoryPadding: EdgeInsets.lerp(widgetListingCategoryPadding, other.widgetListingCategoryPadding, t),
      widgetListingCategoryDividerPadding: EdgeInsets.lerp(widgetListingCategoryDividerPadding, other.widgetListingCategoryDividerPadding, t),
      widgetListingCategoryDividerShortValue: lerpDouble(widgetListingCategoryDividerShortValue, other.widgetListingCategoryDividerShortValue, t),
      widgetListingCategoryDropdownButtonTextStyle:
          TextStyle.lerp(widgetListingCategoryDropdownButtonTextStyle, other.widgetListingCategoryDropdownButtonTextStyle, t),
      widgetListingCategoryDropdownButtonUnopenedIcon:
          LerpHelper.lerp(widgetListingCategoryDropdownButtonUnopenedIcon, other.widgetListingCategoryDropdownButtonUnopenedIcon, t),
      widgetListingCategoryDropdownButtonOpenedIcon:
          LerpHelper.lerp(widgetListingCategoryDropdownButtonOpenedIcon, other.widgetListingCategoryDropdownButtonOpenedIcon, t),
      widgetListingCategoryWidgetButtonContentCentered:
          LerpHelper.lerp(widgetListingCategoryWidgetButtonContentCentered, other.widgetListingCategoryWidgetButtonContentCentered, t),
      widgetListingCategoryWidgetButtonTextStyle:
          TextStyle.lerp(widgetListingCategoryWidgetButtonTextStyle, other.widgetListingCategoryWidgetButtonTextStyle, t),
    );
  }
}
