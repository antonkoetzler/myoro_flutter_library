import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating button style variants and in general essential builders to style a button.
enum MyoroButtonVariantEnum {
  /// Primary.
  primary,

  /// Secondary.
  secondary;

  /// [Border] builder.
  ///
  /// This is independent of the [MyoroButtonVariantEnum] provided, thus, it is static.
  static Border? borderBuilder(BuildContext context, MyoroTapStatusEnum tapStatus) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();
    final borderWidth = themeExtension.borderWidth;
    final borderIdleColor = themeExtension.borderIdleColor;
    final borderHoverColor = themeExtension.borderHoverColor;
    final borderTapColor = themeExtension.borderTapColor;

    return borderWidth == null
        ? null
        : Border.all(
            width: borderWidth,
            color:
                switch (tapStatus) {
                  MyoroTapStatusEnum.idle => borderIdleColor,
                  MyoroTapStatusEnum.hover => borderHoverColor,
                  MyoroTapStatusEnum.tap => borderTapColor,
                } ??
                MyoroColors.transparent,
          );
  }

  /// [BorderRadius] builder.
  ///
  /// This is independent of the [MyoroButtonVariantEnum] provided, thus, it is static.
  BorderRadius? borderRadiusBuilder(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();
    return themeExtension.borderRadius;
  }

  /// Background [Color] builder.
  Color? backgroundColorBuilder(BuildContext context, MyoroTapStatusEnum tapStatus) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();
    final primaryBackgroundIdleColor = themeExtension.primaryBackgroundIdleColor;
    final primaryBackgroundHoverColor = themeExtension.primaryBackgroundHoverColor;
    final primaryBackgroundTapColor = themeExtension.primaryBackgroundTapColor;
    final secondaryBackgroundIdleColor = themeExtension.secondaryBackgroundIdleColor;
    final secondaryBackgroundHoverColor = themeExtension.secondaryBackgroundHoverColor;
    final secondaryBackgroundTapColor = themeExtension.secondaryBackgroundTapColor;

    return switch (this) {
      primary => switch (tapStatus) {
        MyoroTapStatusEnum.idle => primaryBackgroundIdleColor,
        MyoroTapStatusEnum.hover => primaryBackgroundHoverColor,
        MyoroTapStatusEnum.tap => primaryBackgroundTapColor,
      },
      secondary => switch (tapStatus) {
        MyoroTapStatusEnum.idle => secondaryBackgroundIdleColor,
        MyoroTapStatusEnum.hover => secondaryBackgroundHoverColor,
        MyoroTapStatusEnum.tap => secondaryBackgroundTapColor,
      },
    };
  }

  /// Content [Color] builder.
  Color? contentColorBuilder(BuildContext context, MyoroTapStatusEnum tapStatus) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();
    final primaryContentIdleColor = themeExtension.primaryContentIdleColor;
    final primaryContentHoverColor = themeExtension.primaryContentHoverColor;
    final primaryContentTapColor = themeExtension.primaryContentTapColor;
    final secondaryContentIdleColor = themeExtension.secondaryContentIdleColor;
    final secondaryContentHoverColor = themeExtension.secondaryContentHoverColor;
    final secondaryContentTapColor = themeExtension.secondaryContentTapColor;

    return switch (this) {
      primary => switch (tapStatus) {
        MyoroTapStatusEnum.idle => primaryContentIdleColor,
        MyoroTapStatusEnum.hover => primaryContentHoverColor,
        MyoroTapStatusEnum.tap => primaryContentTapColor,
      },
      secondary => switch (tapStatus) {
        MyoroTapStatusEnum.idle => secondaryContentIdleColor,
        MyoroTapStatusEnum.hover => secondaryContentHoverColor,
        MyoroTapStatusEnum.tap => secondaryContentTapColor,
      },
    };
  }
}
