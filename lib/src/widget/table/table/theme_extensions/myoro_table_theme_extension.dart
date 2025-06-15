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
  /// [Container.decoration] of [_MyoroTableState].
  final BoxDecoration decoration;

  /// Default [TextStyle] of [_Column].
  final TextStyle columnTextStyle;

  /// Spacing between columns.
  final double columnSpacing;

  /// Default [TextStyle] of [_Row].
  final TextStyle rowTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  final EdgeInsets loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  const MyoroTableThemeExtension({
    required this.decoration,
    required this.columnTextStyle,
    required this.columnSpacing,
    required this.rowTextStyle,
    required this.loaderEmptyMessageErrorMessagePadding,
    required this.emptyMessageTextStyle,
    required this.errorMessageTextStyle,
  });

  factory MyoroTableThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;

    return MyoroTableThemeExtension(
      decoration: myoroFake<BoxDecoration>(),
      columnTextStyle: typography.randomTextStyle,
      columnSpacing: faker.randomGenerator.decimal(scale: 20),
      rowTextStyle: typography.randomTextStyle,
      loaderEmptyMessageErrorMessagePadding: myoroFake<EdgeInsets>(),
      emptyMessageTextStyle: typography.randomTextStyle,
      errorMessageTextStyle: typography.randomTextStyle,
    );
  }

  MyoroTableThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : decoration = BoxDecoration(
        color: colorScheme.primary,
        border: Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      columnTextStyle = textTheme.titleMedium!,
      columnSpacing = 10,
      rowTextStyle = textTheme.bodyMedium!,
      loaderEmptyMessageErrorMessagePadding = const EdgeInsets.all(10),
      emptyMessageTextStyle = textTheme.headlineMedium!,
      errorMessageTextStyle = textTheme.headlineMedium!.withColor(colorScheme.error);

  @override
  MyoroTableThemeExtension lerp(covariant ThemeExtension<MyoroTableThemeExtension>? other, double t) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      columnTextStyle: TextStyle.lerp(columnTextStyle, other.columnTextStyle, t),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      rowTextStyle: TextStyle.lerp(rowTextStyle, other.rowTextStyle, t),
      loaderEmptyMessageErrorMessagePadding: EdgeInsets.lerp(
        loaderEmptyMessageErrorMessagePadding,
        other.loaderEmptyMessageErrorMessagePadding,
        t,
      ),
      emptyMessageTextStyle: TextStyle.lerp(emptyMessageTextStyle, other.emptyMessageTextStyle, t),
      errorMessageTextStyle: TextStyle.lerp(errorMessageTextStyle, other.errorMessageTextStyle, t),
    );
  }
}
