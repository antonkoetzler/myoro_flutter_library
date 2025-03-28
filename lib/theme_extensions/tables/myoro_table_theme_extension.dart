import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTable].
final class MyoroTableThemeExtension
    extends ThemeExtension<MyoroTableThemeExtension> {
  /// [BoxDecoration] of the root [Container] in [_MyoroTableState].
  final BoxDecoration decoration;

  /// Fixed height of [_TitleRow].
  final double titleRowHeight;

  /// Minimum width of [_TitleRow] to prevent overflows when resizing [MyoroTableColumn]s.
  final double titleRowCellMinWidth;

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

  /// Spacing between items in [_TitleColumn].
  final double titleColumnSpacing;

  /// Spacing between additional items like [_RowCheckbox] within a mapped [MyoroTableRow] in [_Rows].
  final double rowsCellSpacing;

  /// [MyoroHoverButtonConfiguration] of a [MyoroTableRow] in [_Rows].
  final MyoroHoverButtonConfiguration rowsButtonConfiguration;

  const MyoroTableThemeExtension({
    required this.decoration,
    required this.titleRowHeight,
    required this.titleRowCellMinWidth,
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
    required this.rowsCellSpacing,
    required this.rowsButtonConfiguration,
  });

  MyoroTableThemeExtension.fake()
    : decoration = BoxDecoration(
        color:
            kMyoroTestColors[faker.randomGenerator.integer(
              kMyoroTestColors.length,
            )],
      ),
      titleRowHeight = faker.randomGenerator.decimal(),
      titleRowCellMinWidth = faker.randomGenerator.decimal(),
      contentPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      columnSpacing = faker.randomGenerator.decimal(),
      tableFooterSpacing = faker.randomGenerator.decimal(),
      emptyMessageTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      titleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      errorMessageHeaderTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      errorMessageErrorTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      messageSpacing = faker.randomGenerator.decimal(),
      buttonConfiguration = MyoroHoverButtonConfiguration.fake(),
      footerSpacing = faker.randomGenerator.decimal(),
      titleColumnSpacing = faker.randomGenerator.decimal(),
      rowsCellSpacing = faker.randomGenerator.decimal(),
      rowsButtonConfiguration = MyoroHoverButtonConfiguration.fake();

  MyoroTableThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : decoration = BoxDecoration(
        color: colorScheme.primary,
        border: Border.all(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
        borderRadius: MyoroDecorationHelper.borderRadius,
      ),
      titleRowHeight = 45,
      titleRowCellMinWidth = 50,
      contentPadding = const EdgeInsets.all(10),
      columnSpacing = 5,
      tableFooterSpacing = 15,
      emptyMessageTextStyle = textTheme.titleMedium!,
      titleTextStyle = textTheme.titleSmall!,
      errorMessageHeaderTextStyle = textTheme.titleMedium!.withColor(
        colorScheme.error,
      ),
      errorMessageErrorTextStyle = textTheme.bodyMedium!.withColor(
        colorScheme.error,
      ),
      buttonConfiguration = const MyoroHoverButtonConfiguration(bordered: true),
      messageSpacing = 20,
      footerSpacing = 5,
      titleColumnSpacing = 5,
      rowsCellSpacing = 3,
      rowsButtonConfiguration = MyoroHoverButtonConfiguration(
        onPrimaryColor: colorScheme.onPrimary.withValues(alpha: 0.3),
        borderRadius: BorderRadius.zero,
        primaryColor: MyoroColorDesignSystem.transparent,
      );

  @override
  MyoroTableThemeExtension copyWith({
    BoxDecoration? decoration,
    double? titleRowHeight,
    double? titleRowCellMinWidth,
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
    double? rowsCellSpacing,
    MyoroHoverButtonConfiguration? rowsButtonConfiguration,
  }) {
    return MyoroTableThemeExtension(
      decoration: decoration ?? this.decoration,
      titleRowHeight: titleRowHeight ?? this.titleRowHeight,
      titleRowCellMinWidth: titleRowCellMinWidth ?? this.titleRowCellMinWidth,
      contentPadding: contentPadding ?? this.contentPadding,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      tableFooterSpacing: tableFooterSpacing ?? this.tableFooterSpacing,
      emptyMessageTextStyle:
          emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      errorMessageHeaderTextStyle:
          errorMessageHeaderTextStyle ?? this.errorMessageHeaderTextStyle,
      errorMessageErrorTextStyle:
          errorMessageErrorTextStyle ?? this.errorMessageErrorTextStyle,
      messageSpacing: messageSpacing ?? this.messageSpacing,
      buttonConfiguration: buttonConfiguration ?? this.buttonConfiguration,
      footerSpacing: footerSpacing ?? this.footerSpacing,
      titleColumnSpacing: titleColumnSpacing ?? this.titleColumnSpacing,
      rowsCellSpacing: rowsCellSpacing ?? this.rowsCellSpacing,
      rowsButtonConfiguration:
          rowsButtonConfiguration ?? this.rowsButtonConfiguration,
    );
  }

  @override
  MyoroTableThemeExtension lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      titleRowHeight: lerpDouble(titleRowHeight, other.titleRowHeight, t),
      titleRowCellMinWidth: lerpDouble(
        titleRowCellMinWidth,
        other.titleRowCellMinWidth,
        t,
      ),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      tableFooterSpacing: lerpDouble(
        tableFooterSpacing,
        other.tableFooterSpacing,
        t,
      ),
      emptyMessageTextStyle: TextStyle.lerp(
        emptyMessageTextStyle,
        other.emptyMessageTextStyle,
        t,
      ),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      errorMessageHeaderTextStyle: TextStyle.lerp(
        errorMessageHeaderTextStyle,
        other.errorMessageHeaderTextStyle,
        t,
      ),
      errorMessageErrorTextStyle: TextStyle.lerp(
        errorMessageErrorTextStyle,
        other.errorMessageErrorTextStyle,
        t,
      ),
      messageSpacing: lerpDouble(messageSpacing, other.messageSpacing, t),
      buttonConfiguration: MyoroHoverButtonConfiguration.lerp(
        buttonConfiguration,
        other.buttonConfiguration,
        t,
      ),
      footerSpacing: lerpDouble(footerSpacing, other.footerSpacing, t),
      titleColumnSpacing: lerpDouble(
        titleColumnSpacing,
        other.titleColumnSpacing,
        t,
      ),
      rowsCellSpacing: lerpDouble(rowsCellSpacing, other.rowsCellSpacing, t),
      rowsButtonConfiguration: MyoroHoverButtonConfiguration.lerp(
        rowsButtonConfiguration,
        other.rowsButtonConfiguration,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == decoration &&
        other.titleRowHeight == titleRowHeight &&
        other.titleRowCellMinWidth == titleRowCellMinWidth &&
        other.contentPadding == contentPadding &&
        other.columnSpacing == columnSpacing &&
        other.tableFooterSpacing == tableFooterSpacing &&
        other.emptyMessageTextStyle == emptyMessageTextStyle &&
        other.titleTextStyle == titleTextStyle &&
        other.errorMessageHeaderTextStyle == errorMessageHeaderTextStyle &&
        other.errorMessageErrorTextStyle == errorMessageErrorTextStyle &&
        other.messageSpacing == messageSpacing &&
        other.buttonConfiguration == buttonConfiguration &&
        other.footerSpacing == footerSpacing &&
        other.titleColumnSpacing == titleColumnSpacing &&
        other.rowsCellSpacing == rowsCellSpacing &&
        other.rowsButtonConfiguration == rowsButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      decoration,
      titleRowHeight,
      titleRowCellMinWidth,
      contentPadding,
      columnSpacing,
      tableFooterSpacing,
      emptyMessageTextStyle,
      titleTextStyle,
      errorMessageHeaderTextStyle,
      errorMessageErrorTextStyle,
      messageSpacing,
      buttonConfiguration,
      footerSpacing,
      titleColumnSpacing,
      rowsCellSpacing,
      rowsButtonConfiguration,
    );
  }
}
