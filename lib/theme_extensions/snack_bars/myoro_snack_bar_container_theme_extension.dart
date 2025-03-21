import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSnackBarContainer].
final class MyoroSnackBarContainerThemeExtension
    extends ThemeExtension<MyoroSnackBarContainerThemeExtension> {
  /// Background color of the container.
  final Color primaryColor;

  /// [SnackBarBehavior] of the container.
  final SnackBarBehavior behavior;

  /// Margin [EdgeInsets] of the container.
  final EdgeInsets margin;

  /// Padding [EdgeInsets] of the container.
  final EdgeInsets padding;

  /// Elevation of the container.
  final double elevation;

  /// [DismissDirection] of the container.
  final DismissDirection dismissDirection;

  /// Duration that the snack bar will be shown for.
  final Duration duration;

  const MyoroSnackBarContainerThemeExtension({
    required this.primaryColor,
    required this.behavior,
    required this.margin,
    required this.padding,
    required this.elevation,
    required this.dismissDirection,
    required this.duration,
  });

  MyoroSnackBarContainerThemeExtension.fake()
    : primaryColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      behavior =
          SnackBarBehavior.values[faker.randomGenerator.integer(
            SnackBarBehavior.values.length,
          )],
      margin = EdgeInsets.all(faker.randomGenerator.decimal()),
      padding = EdgeInsets.all(faker.randomGenerator.decimal()),
      elevation = faker.randomGenerator.decimal(),
      dismissDirection =
          DismissDirection.values[faker.randomGenerator.integer(
            DismissDirection.values.length,
          )],
      duration = Duration(milliseconds: faker.randomGenerator.integer(9999));

  const MyoroSnackBarContainerThemeExtension.builder()
    : primaryColor = MyoroColorDesignSystem.transparent,
      behavior = SnackBarBehavior.floating,
      margin = const EdgeInsets.all(10),
      padding = EdgeInsets.zero,
      elevation = 0,
      dismissDirection = DismissDirection.none,
      duration = const Duration(seconds: 3);

  @override
  MyoroSnackBarContainerThemeExtension copyWith({
    Color? primaryColor,
    SnackBarBehavior? behavior,
    EdgeInsets? margin,
    EdgeInsets? padding,
    double? elevation,
    DismissDirection? dismissDirection,
    Duration? duration,
  }) {
    return MyoroSnackBarContainerThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      behavior: behavior ?? this.behavior,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      elevation: elevation ?? this.elevation,
      dismissDirection: dismissDirection ?? this.dismissDirection,
      duration: duration ?? this.duration,
    );
  }

  @override
  MyoroSnackBarContainerThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarContainerThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSnackBarContainerThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      behavior: myoroLerp(behavior, other.behavior, t),
      margin: EdgeInsets.lerp(margin, other.margin, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      dismissDirection: myoroLerp(dismissDirection, other.dismissDirection, t),
      duration: myoroLerp(duration, other.duration, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarContainerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == primaryColor &&
        other.behavior == behavior &&
        other.margin == margin &&
        other.padding == padding &&
        other.elevation == elevation &&
        other.dismissDirection == dismissDirection &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryColor,
      behavior,
      margin,
      padding,
      elevation,
      dismissDirection,
      duration,
    );
  }
}
