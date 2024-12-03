import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTable].
final class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension> {
  /// Background color of the table.
  final Color backgroundColor;

  /// Border of the table.
  final Border border;

  /// Border radius of the table;
  final BorderRadius borderRadius;

  /// Padding of the content in [_Titles] (not the [MyoroBasicDivider] in [_Titles]) & [_RowsSection].
  final EdgeInsets contentPadding;

  /// Spacing in between each column.
  final double columnSpacing;

  /// Text style of [_EmptyText].
  final TextStyle emptyTableTextStyle;

  /// Text style of the title in [_ErrorMessage].
  final TextStyle errorMessageTitleTextStyle;

  /// Text style of the error message below the title in [_ErrorMessage].
  final TextStyle errorMessageErrorTextStyle;

  const MyoroTableThemeExtension({
    required this.backgroundColor,
    required this.border,
    required this.borderRadius,
    required this.contentPadding,
    required this.columnSpacing,
    required this.emptyTableTextStyle,
    required this.errorMessageTitleTextStyle,
    required this.errorMessageErrorTextStyle,
  });

  @override
  MyoroTableThemeExtension copyWith({
    Color? backgroundColor,
    Border? border,
    BorderRadius? borderRadius,
    EdgeInsets? contentPadding,
    double? columnSpacing,
    TextStyle? emptyTableTextStyle,
    TextStyle? errorMessageTitleTextStyle,
    TextStyle? errorMessageErrorTextStyle,
  }) {
    return MyoroTableThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      contentPadding: contentPadding ?? this.contentPadding,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      emptyTableTextStyle: emptyTableTextStyle ?? this.emptyTableTextStyle,
      errorMessageTitleTextStyle: errorMessageTitleTextStyle ?? this.errorMessageTitleTextStyle,
      errorMessageErrorTextStyle: errorMessageErrorTextStyle ?? this.errorMessageErrorTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroTableThemeExtension> lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      emptyTableTextStyle: TextStyle.lerp(emptyTableTextStyle, other.emptyTableTextStyle, t),
      errorMessageTitleTextStyle: TextStyle.lerp(errorMessageTitleTextStyle, other.errorMessageTitleTextStyle, t),
      errorMessageErrorTextStyle: TextStyle.lerp(errorMessageErrorTextStyle, other.errorMessageErrorTextStyle, t),
    );
  }
}
