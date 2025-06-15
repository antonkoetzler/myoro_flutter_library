import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_snack_bar_container_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroSnackBarContainer].
@immutable
@myoroThemeExtension
class MyoroSnackBarContainerThemeExtension extends ThemeExtension<MyoroSnackBarContainerThemeExtension>
    with _$MyoroSnackBarContainerThemeExtensionMixin {
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

  const MyoroSnackBarContainerThemeExtension({
    required this.primaryColor,
    required this.behavior,
    required this.margin,
    required this.padding,
    required this.elevation,
    required this.dismissDirection,
  });

  MyoroSnackBarContainerThemeExtension.fake()
    : primaryColor = myoroFake<Color>(),
      behavior = myoroFake<SnackBarBehavior>(),
      margin = myoroFake<EdgeInsets>(),
      padding = myoroFake<EdgeInsets>(),
      elevation = faker.randomGenerator.decimal(),
      dismissDirection = myoroFake<DismissDirection>();

  const MyoroSnackBarContainerThemeExtension.builder()
    : primaryColor = MyoroColorDesignSystem.transparent,
      behavior = SnackBarBehavior.floating,
      margin = const EdgeInsets.all(10),
      padding = EdgeInsets.zero,
      elevation = 0,
      dismissDirection = DismissDirection.none;

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
    );
  }
}
