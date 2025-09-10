import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTable].
@immutable
@myoroThemeExtension
class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension> with _$MyoroTableThemeExtensionMixin {
  const MyoroTableThemeExtension({
    this.decoration,
    this.columnTextStyle,
    this.columnSpacing,
    this.rowTextStyle,
    this.loaderEmptyMessageErrorMessagePadding,
    this.emptyMessageTextStyle,
    this.errorMessageTextStyle,
  });

  // coverage:ignore-start
  MyoroTableThemeExtension.fake()
    : decoration = faker.randomGenerator.boolean() ? myoroFake<BoxDecoration>() : null,
      columnTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      columnSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      rowTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      loaderEmptyMessageErrorMessagePadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      emptyMessageTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      errorMessageTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

  MyoroTableThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : decoration = BoxDecoration(
        color: colorScheme.primary,
        border: Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      ),
      columnTextStyle = textTheme.titleMedium!,
      columnSpacing = 10,
      rowTextStyle = textTheme.bodyMedium!,
      loaderEmptyMessageErrorMessagePadding = const EdgeInsets.all(10),
      emptyMessageTextStyle = textTheme.headlineMedium!,
      errorMessageTextStyle = textTheme.headlineMedium!.withColor(colorScheme.error);

  /// [Container.decoration] of [_MyoroTableState].
  final BoxDecoration? decoration;

  /// Default [TextStyle] of [_Column].
  final TextStyle? columnTextStyle;

  /// Spacing between columns.
  final double? columnSpacing;

  /// Default [TextStyle] of [_Row].
  final TextStyle? rowTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  final EdgeInsets? loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle? emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle? errorMessageTextStyle;

  @override
  MyoroTableThemeExtension lerp(covariant ThemeExtension<MyoroTableThemeExtension>? other, double t) {
    if (other is! MyoroTableThemeExtension) return this;

    final decoration = BoxDecoration.lerp(this.decoration, other.decoration, t);
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
      decoration: decoration,
      decorationProvided: decoration != null,
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
