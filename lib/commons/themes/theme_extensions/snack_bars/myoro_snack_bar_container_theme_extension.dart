import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSnackBarContainer].
final class MyoroSnackBarContainerThemeExtension extends ThemeExtension<MyoroSnackBarContainerThemeExtension> {
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
  ThemeExtension<MyoroSnackBarContainerThemeExtension> lerp(
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
}
