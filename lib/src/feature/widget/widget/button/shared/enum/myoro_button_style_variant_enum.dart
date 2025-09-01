import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum to encapsulate various styles that can be passed in MFLs buttons.
///
/// i.e. Background color builder, content color builder, border builder, etc.
enum MyoroButtonStyleVariantEnum {
  /// Primary style.
  primary,

  /// Secondary style.
  secondary;

  /// Background [Color] builder.
  Color? backgroundColorBuilder(BuildContext context, MyoroTapStatusEnum status) {
    final themeExtension = _getThemeExtension(context);
    final primaryIdleBackgroundColor = themeExtension.primaryIdleBackgroundColor;
    final secondaryIdleBackgroundColor = themeExtension.secondaryIdleBackgroundColor;
    final primaryHoverBackgroundColor = themeExtension.primaryHoverBackgroundColor;
    final secondaryHoverBackgroundColor = themeExtension.secondaryHoverBackgroundColor;
    final primaryTapBackgroundColor = themeExtension.primaryTapBackgroundColor;
    final secondaryTapBackgroundColor = themeExtension.secondaryTapBackgroundColor;

    return switch (status) {
      MyoroTapStatusEnum.idle => switch (this) {
        primary => primaryIdleBackgroundColor,
        secondary => secondaryIdleBackgroundColor,
      },
      MyoroTapStatusEnum.hover => switch (this) {
        primary => primaryHoverBackgroundColor,
        secondary => secondaryHoverBackgroundColor,
      },
      MyoroTapStatusEnum.tap => switch (this) {
        primary => primaryTapBackgroundColor,
        secondary => secondaryTapBackgroundColor,
      },
    };
  }

  /// Content [Color] builder.
  Color? contentColorBuilder(BuildContext context, MyoroTapStatusEnum status) {
    final themeExtension = _getThemeExtension(context);
    final primaryIdleContentColor = themeExtension.primaryIdleContentColor;
    final secondaryIdleContentColor = themeExtension.secondaryIdleContentColor;
    final primaryHoverContentColor = themeExtension.primaryHoverContentColor;
    final secondaryHoverContentColor = themeExtension.secondaryHoverContentColor;
    final primaryTapContentColor = themeExtension.primaryTapContentColor;
    final secondaryTapContentColor = themeExtension.secondaryTapContentColor;

    return switch (status) {
      MyoroTapStatusEnum.idle => switch (this) {
        primary => primaryIdleContentColor,
        secondary => secondaryIdleContentColor,
      },
      MyoroTapStatusEnum.hover => switch (this) {
        primary => primaryHoverContentColor,
        secondary => secondaryHoverContentColor,
      },
      MyoroTapStatusEnum.tap => switch (this) {
        primary => primaryTapContentColor,
        secondary => secondaryTapContentColor,
      },
    };
  }

  /// [BoxBorder] builder.
  BoxBorder? borderBuilder(BuildContext context, MyoroTapStatusEnum status, [double borderWidth = kMyoroBorderWidth]) {
    final themeExtension = _getThemeExtension(context);
    final primaryIdleBorderColor = themeExtension.primaryIdleBorderColor;
    final secondaryIdleBorderColor = themeExtension.secondaryIdleBorderColor;
    final primaryHoverBorderColor = themeExtension.primaryHoverBorderColor;
    final secondaryHoverBorderColor = themeExtension.secondaryHoverBorderColor;
    final primaryTapBorderColor = themeExtension.primaryTapBorderColor;
    final secondaryTapBorderColor = themeExtension.secondaryTapBorderColor;

    final color = switch (status) {
      MyoroTapStatusEnum.idle => switch (this) {
        primary => primaryIdleBorderColor,
        secondary => secondaryIdleBorderColor,
      },
      MyoroTapStatusEnum.hover => switch (this) {
        primary => primaryHoverBorderColor,
        secondary => secondaryHoverBorderColor,
      },
      MyoroTapStatusEnum.tap => switch (this) {
        primary => primaryTapBorderColor,
        secondary => secondaryTapBorderColor,
      },
    };

    return color != null ? Border.all(color: color, width: borderWidth) : null;
  }

  /// Helper function to retrieve [MyoroButtonStyleVariantEnumThemeExtension].
  MyoroButtonStyleVariantEnumThemeExtension _getThemeExtension(BuildContext context) {
    return context.resolveThemeExtension<MyoroButtonStyleVariantEnumThemeExtension>();
  }

  bool get isPrimary => this == primary;
  bool get isSecondary => this == secondary;
}
