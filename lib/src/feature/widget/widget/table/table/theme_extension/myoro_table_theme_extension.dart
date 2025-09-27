
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
      columnSpacing = kMyoroMultiplier * 2.5,
      rowTextStyle = textTheme.bodyMedium!,
      loaderEmptyMessageErrorMessagePadding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
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
  MyoroTableThemeExtension lerp(covariant MyoroTableThemeExtension? other, double t) {
    if (other is! MyoroTableThemeExtension) return this;
    final style = MyoroTableStyle.lerp(this, other, t);
    return MyoroTableThemeExtension(
      backgroundColor: style.backgroundColor,
      columnTextStyle: style.columnTextStyle,
      columnSpacing: style.columnSpacing,
      rowTextStyle: style.rowTextStyle,
      loaderEmptyMessageErrorMessagePadding: style.loaderEmptyMessageErrorMessagePadding,
      emptyMessageTextStyle: style.emptyMessageTextStyle,
      errorMessageTextStyle: style.errorMessageTextStyle,
    );
  }
}
