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

  /// Spacing between Table & [_Footer].
  final double tableFooterSpacing;

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

  /// [MyoroHoverButtonConfiguration] of buttons].
  final MyoroHoverButtonConfiguration buttonConfiguration;

  /// Spacing between items in [_Footer].
  final double footerSpacing;

  /// Spacing bewtween items in [_TitleColumn].
  final double titleColumnSpacing;

  const MyoroTableThemeExtension({
    required this.decoration,
    required this.contentPadding,
    required this.columnSpacing,
    required this.tableFooterSpacing,
    required this.emptyMessageTextStyle,
    required this.titleTextStyle,
    required this.errorMessageHeaderTextStyle,
    required this.errorMessageErrorTextStyle,
    required this.messageSpacing,
    required this.buttonConfiguration,
    required this.footerSpacing,
    required this.titleColumnSpacing,
  });

  @override
  MyoroTableThemeExtension copyWith({
    BoxDecoration? decoration,
    EdgeInsets? contentPadding,
    double? columnSpacing,
    double? tableFooterSpacing,
    TextStyle? emptyMessageTextStyle,
    TextStyle? titleTextStyle,
    TextStyle? errorMessageHeaderTextStyle,
    TextStyle? errorMessageErrorTextStyle,
    double? messageSpacing,
    MyoroHoverButtonConfiguration? buttonConfiguration,
    double? footerSpacing,
    double? titleColumnSpacing,
  }) {
    return MyoroTableThemeExtension(
      decoration: decoration ?? this.decoration,
      contentPadding: contentPadding ?? this.contentPadding,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      tableFooterSpacing: tableFooterSpacing ?? this.tableFooterSpacing,
      emptyMessageTextStyle: emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      errorMessageHeaderTextStyle: errorMessageHeaderTextStyle ?? this.errorMessageHeaderTextStyle,
      errorMessageErrorTextStyle: errorMessageErrorTextStyle ?? this.errorMessageErrorTextStyle,
      messageSpacing: messageSpacing ?? this.messageSpacing,
      buttonConfiguration: buttonConfiguration ?? this.buttonConfiguration,
      footerSpacing: footerSpacing ?? this.footerSpacing,
      titleColumnSpacing: titleColumnSpacing ?? this.titleColumnSpacing,
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
      tableFooterSpacing: lerpDouble(tableFooterSpacing, other.tableFooterSpacing, t),
      emptyMessageTextStyle: TextStyle.lerp(emptyMessageTextStyle, other.emptyMessageTextStyle, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      errorMessageHeaderTextStyle: TextStyle.lerp(errorMessageHeaderTextStyle, other.errorMessageHeaderTextStyle, t),
      errorMessageErrorTextStyle: TextStyle.lerp(errorMessageErrorTextStyle, other.errorMessageErrorTextStyle, t),
      messageSpacing: lerpDouble(messageSpacing, other.messageSpacing, t),
      buttonConfiguration: MyoroLerpHelper.lerp(buttonConfiguration, other.buttonConfiguration, t),
      footerSpacing: lerpDouble(footerSpacing, other.footerSpacing, t),
      titleColumnSpacing: lerpDouble(titleColumnSpacing, other.titleColumnSpacing, t),
    );
  }
}
