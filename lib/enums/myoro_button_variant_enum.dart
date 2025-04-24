import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum centralizing all default button variants provided.
enum MyoroButtonVariantEnum {
  /// No idle background color and normal coloring of content.
  primary,

  /// Background color and "inverse" coloring of content.
  secondary;

  /// [MyoroButtonConfiguration.backgroundColorBuilder].
  Color backgroundColorBuilder(
    BuildContext context,
    MyoroTapStatusEnum tapStatusEnum,
  ) {
    final themeExtension = _getThemeExtension(context);

    return switch (this) {
      primary => switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => themeExtension.primaryIdleBackgroundColor,
        MyoroTapStatusEnum.hover => themeExtension.primaryHoverBackgroundColor,
        MyoroTapStatusEnum.tap => themeExtension.primaryTapBackgroundColor,
      },
      secondary => switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => themeExtension.secondaryIdleBackgroundColor,
        MyoroTapStatusEnum.hover =>
          themeExtension.secondaryHoverBackgroundColor,
        MyoroTapStatusEnum.tap => themeExtension.secondaryTapBackgroundColor,
      },
    };
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder].
  Color contentColorBuilder(
    BuildContext context,
    MyoroTapStatusEnum tapStatusEnum,
  ) {
    final themeExtension = _getThemeExtension(context);

    return switch (this) {
      primary => switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => themeExtension.primaryIdleContentColor,
        MyoroTapStatusEnum.hover => themeExtension.primaryHoverContentColor,
        MyoroTapStatusEnum.tap => themeExtension.primaryTapContentColor,
      },
      secondary => switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => themeExtension.secondaryIdleContentColor,
        MyoroTapStatusEnum.hover => themeExtension.secondaryHoverContentColor,
        MyoroTapStatusEnum.tap => themeExtension.secondaryTapContentColor,
      },
    };
  }

  MyoroButtonVariantThemeExtension _getThemeExtension(BuildContext context) {
    return context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();
  }
}
