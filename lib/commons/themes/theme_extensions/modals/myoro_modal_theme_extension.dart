import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroModal].
final class MyoroModalThemeExtension extends ThemeExtension<MyoroModalThemeExtension> {
  /// Background color of the modal.
  final Color primaryColor;

  /// Border radius of the modal.
  final BorderRadius borderRadius;

  /// Border of the modal.
  final Border border;

  /// Padding of everything in the modal.
  final EdgeInsets padding;

  /// Constraints of the modal.
  final BoxConstraints constraints;

  /// Spacing between the [_Header] and the contents of the modal.
  final double spacing;

  /// Text style of [_Title].
  final TextStyle titleTextStyle;

  /// Icon of [_CloseButton].
  final IconData closeButtonIcon;

  const MyoroModalThemeExtension({
    required this.primaryColor,
    required this.borderRadius,
    required this.border,
    required this.padding,
    required this.constraints,
    required this.spacing,
    required this.titleTextStyle,
    required this.closeButtonIcon,
  });

  @override
  MyoroModalThemeExtension copyWith({
    Color? primaryColor,
    BorderRadius? borderRadius,
    Border? border,
    EdgeInsets? padding,
    BoxConstraints? constraints,
    double? spacing,
    TextStyle? titleTextStyle,
    IconData? closeButtonIcon,
  }) {
    return MyoroModalThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      borderRadius: borderRadius ?? this.borderRadius,
      border: border ?? this.border,
      padding: padding ?? this.padding,
      constraints: constraints ?? this.constraints,
      spacing: spacing ?? this.spacing,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      closeButtonIcon: closeButtonIcon ?? this.closeButtonIcon,
    );
  }

  @override
  ThemeExtension<MyoroModalThemeExtension> lerp(
    covariant ThemeExtension<MyoroModalThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroModalThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      border: Border.lerp(border, other.border, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonIcon: myoroLerp(closeButtonIcon, other.closeButtonIcon, t),
    );
  }
}
