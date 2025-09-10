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
  const MyoroSnackBarContainerThemeExtension({
    this.primaryColor,
    this.behavior,
    this.margin,
    this.padding,
    this.elevation,
    this.dismissDirection,
  });

  // coverage:ignore-start
  MyoroSnackBarContainerThemeExtension.fake()
    : primaryColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      behavior = faker.randomGenerator.boolean() ? myoroFake<SnackBarBehavior>() : null,
      margin = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      elevation = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      dismissDirection = faker.randomGenerator.boolean() ? myoroFake<DismissDirection>() : null;
  // coverage:ignore-end

  const MyoroSnackBarContainerThemeExtension.builder()
    : primaryColor = MyoroColors.transparent,
      behavior = SnackBarBehavior.floating,
      margin = const EdgeInsets.all(10),
      padding = EdgeInsets.zero,
      elevation = 0,
      dismissDirection = DismissDirection.none;

  /// Background color of the container.
  final Color? primaryColor;

  /// [SnackBarBehavior] of the container.
  final SnackBarBehavior? behavior;

  /// Margin [EdgeInsets] of the container.
  final EdgeInsets? margin;

  /// Padding [EdgeInsets] of the container.
  final EdgeInsets? padding;

  /// Elevation of the container.
  final double? elevation;

  /// [DismissDirection] of the container.
  final DismissDirection? dismissDirection;

  @override
  MyoroSnackBarContainerThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarContainerThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSnackBarContainerThemeExtension) return this;

    final primaryColor = Color.lerp(this.primaryColor, other.primaryColor, t);
    final behavior = myoroLerp(this.behavior, other.behavior, t);
    final margin = EdgeInsets.lerp(this.margin, other.margin, t);
    final padding = EdgeInsets.lerp(this.padding, other.padding, t);
    final elevation = lerpDouble(this.elevation, other.elevation, t);
    final dismissDirection = myoroLerp(this.dismissDirection, other.dismissDirection, t);

    return copyWith(
      primaryColor: primaryColor,
      primaryColorProvided: primaryColor != null,
      behavior: behavior,
      behaviorProvided: behavior != null,
      margin: margin,
      marginProvided: margin != null,
      padding: padding,
      paddingProvided: padding != null,
      elevation: elevation,
      elevationProvided: elevation != null,
      dismissDirection: dismissDirection,
      dismissDirectionProvided: dismissDirection != null,
    );
  }
}
