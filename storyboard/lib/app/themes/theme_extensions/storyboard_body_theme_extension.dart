import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [StoryboardBody].
final class StoryboardBodyThemeExtension extends ThemeExtension<StoryboardBodyThemeExtension> {
  /// Minimum width of the side bar.
  final double sideBarMinWidth;

  /// Text style of a [_WidgetListingCategory] dropdown button.
  final TextStyle widgetListingCategoryTextStyle;

  /// Text style of a [_WidgetListingCategory] widget button.
  final TextStyle widgetListingWidgetTextStyle;

  /// Padding of the content within [_WidgetListingCategory].
  final EdgeInsets widgetListingCategoryPadding;

  /// Padding of the divider within [_WidgetListingCategory]s.
  final EdgeInsets widgetListingCategoryDividerPadding;

  /// Short value of the [MyoroBasicDivider] in between [_WidgetListingCategoryDropdownButton]s.
  final double widgetListingCategoryDividerShortValue;

  /// Icon of the unopened [_WidgetListingCategoryDropdownButton].
  final IconData widgetListingCategoryDropdownButtonUnopenedIcon;

  /// Icon of the opened [_WidgetListingCategoryDropdownButton].
  final IconData widgetListingCategoryDropdownButtonOpenedIcon;

  /// Offset of a [_WidgetListingCategoryWidgetButton] widget button.
  final double widgetListingCategoryWidgetButtonOffset;

  /// Text alignment of a [_WidgetListingCategoryWidgetButton] widget button.
  final TextAlign widgetListingCategoryWidgetButtonTextAlign;

  const StoryboardBodyThemeExtension({
    required this.sideBarMinWidth,
    required this.widgetListingCategoryTextStyle,
    required this.widgetListingWidgetTextStyle,
    required this.widgetListingCategoryPadding,
    required this.widgetListingCategoryDividerPadding,
    required this.widgetListingCategoryDividerShortValue,
    required this.widgetListingCategoryDropdownButtonUnopenedIcon,
    required this.widgetListingCategoryDropdownButtonOpenedIcon,
    required this.widgetListingCategoryWidgetButtonOffset,
    required this.widgetListingCategoryWidgetButtonTextAlign,
  });

  @override
  StoryboardBodyThemeExtension copyWith({
    double? sideBarMinWidth,
    TextStyle? widgetListingCategoryTextStyle,
    TextStyle? widgetListingWidgetTextStyle,
    EdgeInsets? widgetListingCategoryPadding,
    EdgeInsets? widgetListingCategoryDividerPadding,
    double? widgetListingCategoryDividerShortValue,
    IconData? widgetListingCategoryDropdownButtonUnopenedIcon,
    IconData? widgetListingCategoryDropdownButtonOpenedIcon,
    double? widgetListingCategoryWidgetButtonOffset,
    TextAlign? widgetListingCategoryWidgetButtonTextAlign,
  }) {
    return StoryboardBodyThemeExtension(
      sideBarMinWidth: sideBarMinWidth ?? this.sideBarMinWidth,
      widgetListingCategoryTextStyle: widgetListingCategoryTextStyle ?? this.widgetListingCategoryTextStyle,
      widgetListingWidgetTextStyle: widgetListingWidgetTextStyle ?? this.widgetListingWidgetTextStyle,
      widgetListingCategoryPadding: widgetListingCategoryPadding ?? this.widgetListingCategoryPadding,
      widgetListingCategoryDividerPadding: widgetListingCategoryDividerPadding ?? this.widgetListingCategoryDividerPadding,
      widgetListingCategoryDividerShortValue: widgetListingCategoryDividerShortValue ?? this.widgetListingCategoryDividerShortValue,
      widgetListingCategoryDropdownButtonUnopenedIcon: widgetListingCategoryDropdownButtonUnopenedIcon ?? this.widgetListingCategoryDropdownButtonUnopenedIcon,
      widgetListingCategoryDropdownButtonOpenedIcon: widgetListingCategoryDropdownButtonOpenedIcon ?? this.widgetListingCategoryDropdownButtonOpenedIcon,
      widgetListingCategoryWidgetButtonOffset: widgetListingCategoryWidgetButtonOffset ?? this.widgetListingCategoryWidgetButtonOffset,
      widgetListingCategoryWidgetButtonTextAlign: widgetListingCategoryWidgetButtonTextAlign ?? this.widgetListingCategoryWidgetButtonTextAlign,
    );
  }

  @override
  StoryboardBodyThemeExtension lerp(StoryboardBodyThemeExtension? other, double t) {
    if (other is! StoryboardBodyThemeExtension) return this;
    return StoryboardBodyThemeExtension(
      sideBarMinWidth: lerpDouble(sideBarMinWidth, other.sideBarMinWidth, t) ?? sideBarMinWidth,
      widgetListingCategoryTextStyle: TextStyle.lerp(widgetListingCategoryTextStyle, other.widgetListingCategoryTextStyle, t) ?? widgetListingCategoryTextStyle,
      widgetListingWidgetTextStyle: TextStyle.lerp(widgetListingWidgetTextStyle, other.widgetListingWidgetTextStyle, t) ?? widgetListingWidgetTextStyle,
      widgetListingCategoryPadding: EdgeInsets.lerp(widgetListingCategoryPadding, other.widgetListingCategoryPadding, t) ?? widgetListingCategoryPadding,
      widgetListingCategoryDividerPadding:
          EdgeInsets.lerp(widgetListingCategoryDividerPadding, other.widgetListingCategoryDividerPadding, t) ?? widgetListingCategoryDividerPadding,
      widgetListingCategoryDividerShortValue:
          lerpDouble(widgetListingCategoryDividerShortValue, other.widgetListingCategoryDividerShortValue, t) ?? widgetListingCategoryDividerShortValue,
      widgetListingCategoryDropdownButtonUnopenedIcon:
          LerpHelper.lerp(widgetListingCategoryDropdownButtonUnopenedIcon, other.widgetListingCategoryDropdownButtonUnopenedIcon, t) ??
              widgetListingCategoryDropdownButtonUnopenedIcon,
      widgetListingCategoryDropdownButtonOpenedIcon:
          LerpHelper.lerp(widgetListingCategoryDropdownButtonOpenedIcon, other.widgetListingCategoryDropdownButtonOpenedIcon, t) ??
              widgetListingCategoryDropdownButtonOpenedIcon,
      widgetListingCategoryWidgetButtonOffset:
          lerpDouble(widgetListingCategoryWidgetButtonOffset, other.widgetListingCategoryWidgetButtonOffset, t) ?? widgetListingCategoryWidgetButtonOffset,
      widgetListingCategoryWidgetButtonTextAlign:
          LerpHelper.lerp(widgetListingCategoryWidgetButtonTextAlign, other.widgetListingCategoryWidgetButtonTextAlign, t) ??
              widgetListingCategoryWidgetButtonTextAlign,
    );
  }
}
