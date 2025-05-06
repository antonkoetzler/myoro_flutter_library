import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTable].
///
/// TODO: Needs to be tested.
class MyoroTableThemeExtension extends ThemeExtension<MyoroTableThemeExtension> {
  /// Default [TextStyle] of [_Column].
  final TextStyle columnTextStyle;

  /// Spacing between columns.
  final double columnSpacing;

  /// [EdgeInsets] of [_Loader].
  final EdgeInsets loaderPadding;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  const MyoroTableThemeExtension({
    required this.columnTextStyle,
    required this.columnSpacing,
    required this.loaderPadding,
    required this.emptyMessageTextStyle,
    required this.errorMessageTextStyle,
  });

  factory MyoroTableThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;

    return MyoroTableThemeExtension(
      columnTextStyle: typography.randomTextStyle,
      columnSpacing: faker.randomGenerator.decimal(scale: 20),
      loaderPadding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      emptyMessageTextStyle: typography.randomTextStyle,
      errorMessageTextStyle: typography.randomTextStyle,
    );
  }

  MyoroTableThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : columnTextStyle = textTheme.titleMedium!,
      columnSpacing = 10,
      loaderPadding = const EdgeInsets.all(10),
      emptyMessageTextStyle = textTheme.headlineMedium!,
      errorMessageTextStyle = textTheme.headlineMedium!.withColor(colorScheme.error);

  @override
  MyoroTableThemeExtension copyWith({
    TextStyle? columnTextStyle,
    double? columnSpacing,
    EdgeInsets? loaderPadding,
    TextStyle? emptyMessageTextStyle,
    TextStyle? errorMessageTextStyle,
  }) {
    return MyoroTableThemeExtension(
      columnTextStyle: columnTextStyle ?? this.columnTextStyle,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      loaderPadding: loaderPadding ?? this.loaderPadding,
      emptyMessageTextStyle: emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      errorMessageTextStyle: errorMessageTextStyle ?? this.errorMessageTextStyle,
    );
  }

  @override
  MyoroTableThemeExtension lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      columnTextStyle: TextStyle.lerp(columnTextStyle, other.columnTextStyle, t),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      loaderPadding: EdgeInsets.lerp(loaderPadding, other.loaderPadding, t),
      emptyMessageTextStyle: TextStyle.lerp(emptyMessageTextStyle, other.emptyMessageTextStyle, t),
      errorMessageTextStyle: TextStyle.lerp(errorMessageTextStyle, other.errorMessageTextStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.columnTextStyle == columnTextStyle &&
        other.columnSpacing == columnSpacing &&
        other.loaderPadding == loaderPadding &&
        other.emptyMessageTextStyle == emptyMessageTextStyle &&
        other.errorMessageTextStyle == errorMessageTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      columnTextStyle,
      columnSpacing,
      loaderPadding,
      emptyMessageTextStyle,
      errorMessageTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroTableThemeExtension(\n'
      '  columnTextStyle: $columnTextStyle,\n'
      '  columnSpacing: $columnSpacing,\n'
      '  loaderPadding: $loaderPadding\n'
      '  emptyMessageTextStyle: emptyMessageTextStyle,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      ');';
}
