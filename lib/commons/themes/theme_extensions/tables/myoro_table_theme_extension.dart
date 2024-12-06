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

  /// Padding of [_TitleColumnsCell].
  final EdgeInsets titleColumnsCellPadding;

  /// Spacing of [_TitleColumnsCell].
  final double titleColumnsCellSpacing;

  /// Text style of [_TitleColumnsCellText].
  final TextStyle titleColumnsCellTextStyle;

  /// Text alignment of [_TitleColumnsCellText].
  final TextAlign titleColumnsCellTextAlign;

  /// Background color of [_Row] when hovered.
  final Color rowBackgroundHoverColor;

  /// Border raidus of [_Row].
  final BorderRadius rowBorderRadius;

  const MyoroTableThemeExtension({
    required this.backgroundColor,
    required this.border,
    required this.borderRadius,
    required this.contentPadding,
    required this.columnSpacing,
    required this.emptyTableTextStyle,
    required this.errorMessageTitleTextStyle,
    required this.errorMessageErrorTextStyle,
    required this.titleColumnsCellPadding,
    required this.titleColumnsCellSpacing,
    required this.titleColumnsCellTextStyle,
    required this.titleColumnsCellTextAlign,
    required this.rowBackgroundHoverColor,
    required this.rowBorderRadius,
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
    EdgeInsets? titleColumnsCellPadding,
    double? titleColumnsCellSpacing,
    TextStyle? titleColumnsCellTextStyle,
    TextAlign? titleColumnsCellTextAlign,
    Color? rowBackgroundHoverColor,
    BorderRadius? rowBorderRadius,
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
      titleColumnsCellPadding: titleColumnsCellPadding ?? this.titleColumnsCellPadding,
      titleColumnsCellSpacing: titleColumnsCellSpacing ?? this.titleColumnsCellSpacing,
      titleColumnsCellTextStyle: titleColumnsCellTextStyle ?? this.titleColumnsCellTextStyle,
      titleColumnsCellTextAlign: titleColumnsCellTextAlign ?? this.titleColumnsCellTextAlign,
      rowBackgroundHoverColor: rowBackgroundHoverColor ?? this.rowBackgroundHoverColor,
      rowBorderRadius: rowBorderRadius ?? this.rowBorderRadius,
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
      titleColumnsCellPadding: EdgeInsets.lerp(titleColumnsCellPadding, other.titleColumnsCellPadding, t),
      titleColumnsCellSpacing: lerpDouble(titleColumnsCellSpacing, other.titleColumnsCellSpacing, t),
      titleColumnsCellTextStyle: TextStyle.lerp(titleColumnsCellTextStyle, other.titleColumnsCellTextStyle, t),
      titleColumnsCellTextAlign: MyoroLerpHelper.lerp(titleColumnsCellTextAlign, other.titleColumnsCellTextAlign, t),
      rowBackgroundHoverColor: Color.lerp(rowBackgroundHoverColor, other.rowBackgroundHoverColor, t),
      rowBorderRadius: BorderRadius.lerp(rowBorderRadius, other.rowBorderRadius, t),
    );
  }
}
