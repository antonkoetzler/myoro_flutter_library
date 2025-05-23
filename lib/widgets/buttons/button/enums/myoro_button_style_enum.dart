import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum centralizing all default button variants provided.
enum MyoroButtonStyleEnum {
  /// No idle background [Color] and normal coloring of content.
  primary,

  /// Background [Color] and "inverse" coloring of content.
  secondary;

  factory MyoroButtonStyleEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Standard [BoxBorder] if you want to apply the default [BoxBorder].
  static BoxBorder border(BuildContext context) {
    final themeExtension = _getThemeExtension(context);
    return themeExtension.border;
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder].
  Color backgroundColorBuilder(
    BuildContext context,
    MyoroGestureStatusEnum tapStatusEnum, {
    bool onTapProvided = true,
  }) {
    final themeExtension = _getThemeExtension(context);

    return switch (this) {
      primary =>
        onTapProvided
            ? switch (tapStatusEnum) {
              MyoroGestureStatusEnum.idle => themeExtension.primaryIdleBackgroundColor,
              MyoroGestureStatusEnum.hover => themeExtension.primaryHoverBackgroundColor,
              MyoroGestureStatusEnum.tap => themeExtension.primaryTapBackgroundColor,
            }
            : themeExtension.primaryIdleBackgroundColor,
      secondary =>
        onTapProvided
            ? switch (tapStatusEnum) {
              MyoroGestureStatusEnum.idle => themeExtension.secondaryIdleBackgroundColor,
              MyoroGestureStatusEnum.hover => themeExtension.secondaryHoverBackgroundColor,
              MyoroGestureStatusEnum.tap => themeExtension.secondaryTapBackgroundColor,
            }
            : themeExtension.secondaryIdleBackgroundColor,
    };
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder].
  Color contentColorBuilder(BuildContext context, MyoroGestureStatusEnum tapStatusEnum) {
    final themeExtension = _getThemeExtension(context);

    return switch (this) {
      primary => switch (tapStatusEnum) {
        MyoroGestureStatusEnum.idle => themeExtension.primaryIdleContentColor,
        MyoroGestureStatusEnum.hover => themeExtension.primaryHoverContentColor,
        MyoroGestureStatusEnum.tap => themeExtension.primaryTapContentColor,
      },
      secondary => switch (tapStatusEnum) {
        MyoroGestureStatusEnum.idle => themeExtension.secondaryIdleContentColor,
        MyoroGestureStatusEnum.hover => themeExtension.secondaryHoverContentColor,
        MyoroGestureStatusEnum.tap => themeExtension.secondaryTapContentColor,
      },
    };
  }

  static MyoroButtonThemeExtension _getThemeExtension(BuildContext context) {
    return context.resolveThemeExtension<MyoroButtonThemeExtension>();
  }

  bool get isPrimary => (this == primary);
  bool get isSecondary => (this == secondary);
}
