import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum centralizing all default button variants provided.
enum MyoroButtonStyleEnum {
  /// No idle background [Color] and normal coloring of content.
  primary,

  /// Background [Color] and "inverse" coloring of content.
  secondary;

  // coverage:ignore-start
  factory MyoroButtonStyleEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  /// Standard [BoxBorder] if you want to apply the default [BoxBorder].
  static BoxBorder border(BuildContext context) {
    final themeExtension = _getThemeExtension(context);
    return themeExtension.border;
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder].
  Color backgroundColorBuilder(BuildContext context, MyoroTapStatusEnum tapStatusEnum, {bool onTapProvided = true}) {
    final themeExtension = _getThemeExtension(context);

    return switch (this) {
      primary =>
        onTapProvided
            ? switch (tapStatusEnum) {
                MyoroTapStatusEnum.idle => themeExtension.primaryIdleBackgroundColor,
                MyoroTapStatusEnum.hover => themeExtension.primaryHoverBackgroundColor,
                MyoroTapStatusEnum.tap => themeExtension.primaryTapBackgroundColor,
              }
            : themeExtension.primaryIdleBackgroundColor,
      secondary =>
        onTapProvided
            ? switch (tapStatusEnum) {
                MyoroTapStatusEnum.idle => themeExtension.secondaryIdleBackgroundColor,
                MyoroTapStatusEnum.hover => themeExtension.secondaryHoverBackgroundColor,
                MyoroTapStatusEnum.tap => themeExtension.secondaryTapBackgroundColor,
              }
            : themeExtension.secondaryIdleBackgroundColor,
    };
  }

  /// [MyoroIconTextButtonConfiguration.contentColorBuilder].
  Color contentColorBuilder(BuildContext context, MyoroTapStatusEnum tapStatusEnum) {
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

  static MyoroButtonThemeExtension _getThemeExtension(BuildContext context) {
    return context.resolveThemeExtension<MyoroButtonThemeExtension>();
  }

  bool get isPrimary => (this == primary);
  bool get isSecondary => (this == secondary);
}
