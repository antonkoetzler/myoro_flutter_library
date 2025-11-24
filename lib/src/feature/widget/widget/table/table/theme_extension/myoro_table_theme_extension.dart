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
  /// Default constructor.
  const MyoroTableThemeExtension({
    this.backgroundColor,
    this.columnTextStyle,
    this.columnSpacing,
    this.rowTextStyle,
    this.loaderEmptyMessageErrorMessagePadding,
    this.emptyMessageTextStyle,
    this.errorMessageTextStyle,
  });

  /// Fake constructor.
  MyoroTableThemeExtension.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      columnTextStyle = myoroNullableFake<TextStyle>(),
      columnSpacing = myoroNullableFake<double>(),
      rowTextStyle = myoroNullableFake<TextStyle>(),
      loaderEmptyMessageErrorMessagePadding = myoroNullableFake<EdgeInsets>(),
      emptyMessageTextStyle = myoroNullableFake<TextStyle>(),
      errorMessageTextStyle = myoroNullableFake<TextStyle>();

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

  /// Default [TextStyle] of columns.
  @override
  final TextStyle? columnTextStyle;

  /// Spacing between columns.
  @override
  final double? columnSpacing;

  /// Default [TextStyle] of rows.
  @override
  final TextStyle? rowTextStyle;

  /// [EdgeInsets] of the loader, empty message and error message.
  @override
  final EdgeInsets? loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of the empty message.
  @override
  final TextStyle? emptyMessageTextStyle;

  /// [TextStyle] of the error message.
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
