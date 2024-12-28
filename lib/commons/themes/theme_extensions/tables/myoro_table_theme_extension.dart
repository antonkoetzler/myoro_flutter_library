import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTable].
final class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension> {
  /// [BoxDecoration] of the root [Container] in [_MyoroTableState].
  final BoxDecoration decoration;

  /// [EdgeInsets] of [_TitleRow] & [_BuiltDataSection] (padding of the contents of the table).
  final EdgeInsets contentPadding;

  /// Spacing between each column.
  final double columnSpacing;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle emptyMessageTextStyle;

  /// [TextStyle] of a column in [_TitleRow].
  final TextStyle titleTextStyle;

  /// [TextStyle] of the header in [_ErrorMessage].
  final TextStyle errorMessageHeaderTextStyle;

  /// [TextStyle] of the actual error at hand in [_ErrorMessage].
  final TextStyle errorMessageErrorTextStyle;

  /// Spacing of items in [_ErrorMessage] & [_EmptyMessage].
  final double messageSpacing;

  /// [MyoroHoverButtonConfiguration] configuration of [_TryAgainButton].
  final MyoroHoverButtonConfiguration tryAgainButtonConfiguration;

  const MyoroTableThemeExtension({
    required this.decoration,
    required this.contentPadding,
    required this.columnSpacing,
    required this.emptyMessageTextStyle,
    required this.titleTextStyle,
    required this.errorMessageHeaderTextStyle,
    required this.errorMessageErrorTextStyle,
    required this.messageSpacing,
    required this.tryAgainButtonConfiguration,
  });

  @override
  MyoroTableThemeExtension copyWith({
    BoxDecoration? decoration,
    EdgeInsets? contentPadding,
    double? columnSpacing,
    TextStyle? emptyMessageTextStyle,
    TextStyle? titleTextStyle,
    TextStyle? errorMessageHeaderTextStyle,
    TextStyle? errorMessageErrorTextStyle,
    double? messageSpacing,
    MyoroHoverButtonConfiguration? tryAgainButtonConfiguration,
  }) {
    return MyoroTableThemeExtension(
      decoration: decoration ?? this.decoration,
      contentPadding: contentPadding ?? this.contentPadding,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      emptyMessageTextStyle: emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      errorMessageHeaderTextStyle: errorMessageHeaderTextStyle ?? this.errorMessageHeaderTextStyle,
      errorMessageErrorTextStyle: errorMessageErrorTextStyle ?? this.errorMessageErrorTextStyle,
      messageSpacing: messageSpacing ?? this.messageSpacing,
      tryAgainButtonConfiguration: tryAgainButtonConfiguration ?? this.tryAgainButtonConfiguration,
    );
  }

  @override
  ThemeExtension<MyoroTableThemeExtension> lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      emptyMessageTextStyle: TextStyle.lerp(emptyMessageTextStyle, other.emptyMessageTextStyle, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      errorMessageHeaderTextStyle: TextStyle.lerp(errorMessageHeaderTextStyle, other.errorMessageHeaderTextStyle, t),
      errorMessageErrorTextStyle: TextStyle.lerp(errorMessageErrorTextStyle, other.errorMessageErrorTextStyle, t),
      messageSpacing: lerpDouble(messageSpacing, other.messageSpacing, t),
      tryAgainButtonConfiguration: MyoroLerpHelper.lerp(tryAgainButtonConfiguration, other.tryAgainButtonConfiguration, t),
    );
  }
}
