import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTable].
@immutable
@myoroThemeExtension
class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension>
    with _$MyoroTableThemeExtensionMixin
    implements MyoroTableStyle {
  const MyoroTableThemeExtension({
    this.backgroundColor,
    this.columnTextStyle,
    this.columnSpacing,
    this.rowTextStyle,
    this.loaderEmptyMessageErrorMessagePadding,
    this.emptyMessageTextStyle,
    this.errorMessageTextStyle,
  });

  // coverage:ignore-start
  MyoroTableThemeExtension.fake()
    : backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      columnTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      columnSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      rowTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      loaderEmptyMessageErrorMessagePadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      emptyMessageTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      errorMessageTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

  MyoroTableThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : backgroundColor = colorScheme.primary,
      columnTextStyle = textTheme.titleMedium!,
      columnSpacing = 10,
      rowTextStyle = textTheme.bodyMedium!,
      loaderEmptyMessageErrorMessagePadding = const EdgeInsets.all(10),
      emptyMessageTextStyle = textTheme.headlineMedium!,
      errorMessageTextStyle = textTheme.headlineMedium!.withColor(colorScheme.error);

  /// Background color of the table.
  @override
  final Color? backgroundColor;

  /// Default [TextStyle] of [_Column].
  @override
  final TextStyle? columnTextStyle;

  /// Spacing between columns.
  @override
  final double? columnSpacing;

  /// Default [TextStyle] of [_Row].
  @override
  final TextStyle? rowTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  @override
  final EdgeInsets? loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of [_EmptyMessage].
  @override
  final TextStyle? emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  @override
  final TextStyle? errorMessageTextStyle;

  @override
  MyoroTableThemeExtension lerp(covariant ThemeExtension<MyoroTableThemeExtension>? other, double t) {
    if (other is! MyoroTableThemeExtension) return this;

    final backgroundColor = Color.lerp(this.backgroundColor, other.backgroundColor, t);
    final columnTextStyle = TextStyle.lerp(this.columnTextStyle, other.columnTextStyle, t);
    final columnSpacing = lerpDouble(this.columnSpacing, other.columnSpacing, t);
    final rowTextStyle = TextStyle.lerp(this.rowTextStyle, other.rowTextStyle, t);
    final loaderEmptyMessageErrorMessagePadding = EdgeInsets.lerp(
      this.loaderEmptyMessageErrorMessagePadding,
      other.loaderEmptyMessageErrorMessagePadding,
      t,
    );
    final emptyMessageTextStyle = TextStyle.lerp(this.emptyMessageTextStyle, other.emptyMessageTextStyle, t);
    final errorMessageTextStyle = TextStyle.lerp(this.errorMessageTextStyle, other.errorMessageTextStyle, t);

    return copyWith(
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null,
      columnTextStyle: columnTextStyle,
      columnTextStyleProvided: columnTextStyle != null,
      columnSpacing: columnSpacing,
      columnSpacingProvided: columnSpacing != null,
      rowTextStyle: rowTextStyle,
      rowTextStyleProvided: rowTextStyle != null,
      loaderEmptyMessageErrorMessagePadding: loaderEmptyMessageErrorMessagePadding,
      loaderEmptyMessageErrorMessagePaddingProvided: loaderEmptyMessageErrorMessagePadding != null,
      emptyMessageTextStyle: emptyMessageTextStyle,
      emptyMessageTextStyleProvided: emptyMessageTextStyle != null,
      errorMessageTextStyle: errorMessageTextStyle,
      errorMessageTextStyleProvided: errorMessageTextStyle != null,
    );
  }
}
