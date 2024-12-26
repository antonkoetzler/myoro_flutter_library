import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTable].
final class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension> {
  /// [TextStyle] of a column in [_TitleRow].
  final TextStyle titleTextStyle;

  /// [TextStyle] of the header in [_ErrorMessage].
  final TextStyle errorMessageHeaderTextStyle;

  /// [TextStyle] of the actual error at hand in [_ErrorMessage].
  final TextStyle errorMessageErrorTextStyle;

  /// [MyoroHoverButtonConfiguration] configuration of the button to try again in [_ErrorMessage].
  final MyoroHoverButtonConfiguration errorMessageButtonConfiguration;

  /// Spacing of items in [_ErrorMessage].
  final double errorMessageSpacing;

  const MyoroTableThemeExtension({
    required this.titleTextStyle,
    required this.errorMessageHeaderTextStyle,
    required this.errorMessageErrorTextStyle,
    required this.errorMessageButtonConfiguration,
    required this.errorMessageSpacing,
  });

  @override
  MyoroTableThemeExtension copyWith({
    TextStyle? titleTextStyle,
    TextStyle? errorMessageHeaderTextStyle,
    TextStyle? errorMessageErrorTextStyle,
    MyoroHoverButtonConfiguration? errorMessageButtonConfiguration,
    double? errorMessageSpacing,
  }) {
    return MyoroTableThemeExtension(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      errorMessageHeaderTextStyle: errorMessageHeaderTextStyle ?? this.errorMessageHeaderTextStyle,
      errorMessageErrorTextStyle: errorMessageErrorTextStyle ?? this.errorMessageErrorTextStyle,
      errorMessageButtonConfiguration: errorMessageButtonConfiguration ?? this.errorMessageButtonConfiguration,
      errorMessageSpacing: errorMessageSpacing ?? this.errorMessageSpacing,
    );
  }

  @override
  ThemeExtension<MyoroTableThemeExtension> lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      errorMessageHeaderTextStyle: TextStyle.lerp(errorMessageHeaderTextStyle, other.errorMessageHeaderTextStyle, t),
      errorMessageErrorTextStyle: TextStyle.lerp(errorMessageErrorTextStyle, other.errorMessageErrorTextStyle, t),
      errorMessageButtonConfiguration: MyoroLerpHelper.lerp(errorMessageButtonConfiguration, other.errorMessageButtonConfiguration, t),
      errorMessageSpacing: lerpDouble(errorMessageSpacing, other.errorMessageSpacing, t),
    );
  }
}
