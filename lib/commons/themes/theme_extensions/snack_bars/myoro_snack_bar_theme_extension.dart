import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSnackBar].
final class MyoroSnackBarThemeExtension extends ThemeExtension<MyoroSnackBarThemeExtension> {
  /// Background color of the snack bar.
  final Color backgroundColor;

  /// Border of the snack bar.
  final Border border;

  /// Border radius of the snack bar.
  final BorderRadius borderRadius;

  /// Padding of the content of the snack bar.
  final EdgeInsets padding;

  /// Spacing between [_Message]/[MyoroSnackBar.child] & [_CloseButton].
  final double contentCloseButtonSpacing;

  /// Text style of [_Message].
  final TextStyle messageTextStyle;

  /// Icon of [_CloseButton].
  final IconData closeButtonIcon;

  /// Size of the icon in [_CloseButton].
  final double closeButtonIconSize;

  const MyoroSnackBarThemeExtension({
    required this.backgroundColor,
    required this.border,
    required this.borderRadius,
    required this.padding,
    required this.contentCloseButtonSpacing,
    required this.messageTextStyle,
    required this.closeButtonIcon,
    required this.closeButtonIconSize,
  });

  @override
  MyoroSnackBarThemeExtension copyWith({
    Color? backgroundColor,
    Border? border,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    double? contentCloseButtonSpacing,
    TextStyle? messageTextStyle,
    IconData? closeButtonIcon,
    double? closeButtonIconSize,
  }) {
    return MyoroSnackBarThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      contentCloseButtonSpacing: contentCloseButtonSpacing ?? this.contentCloseButtonSpacing,
      messageTextStyle: messageTextStyle ?? this.messageTextStyle,
      closeButtonIcon: closeButtonIcon ?? this.closeButtonIcon,
      closeButtonIconSize: closeButtonIconSize ?? this.closeButtonIconSize,
    );
  }

  @override
  ThemeExtension<MyoroSnackBarThemeExtension> lerp(
    covariant ThemeExtension<MyoroSnackBarThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSnackBarThemeExtension) return this;
    return copyWith(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      contentCloseButtonSpacing: lerpDouble(contentCloseButtonSpacing, other.contentCloseButtonSpacing, t),
      messageTextStyle: TextStyle.lerp(messageTextStyle, other.messageTextStyle, t),
      closeButtonIcon: MyoroLerpHelper.lerp(closeButtonIcon, other.closeButtonIcon, t),
      closeButtonIconSize: lerpDouble(closeButtonIconSize, other.closeButtonIconSize, t),
    );
  }
}
