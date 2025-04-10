import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTableV2].
final class MyoroTableV2ThemeExtension
    extends ThemeExtension<MyoroTableV2ThemeExtension> {
  /// [BoxDecoration] of the [Container] in [_MyoroTableV2State].
  final BoxDecoration decoration;

  /// Spacing between columns without dividers.
  final double columnSpacing;

  /// Standard [TextStyle] of a [_TitleCell].
  final TextStyle titleCellTextStyle;

  /// Size of [_Loader]'s [MyoroCircularLoader].
  final double loaderSize;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  final EdgeInsets dialogPadding;

  const MyoroTableV2ThemeExtension({
    required this.decoration,
    required this.columnSpacing,
    required this.titleCellTextStyle,
    required this.loaderSize,
    required this.emptyMessageTextStyle,
    required this.errorMessageTextStyle,
    required this.dialogPadding,
  });

  factory MyoroTableV2ThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;
    return MyoroTableV2ThemeExtension(
      decoration: BoxDecoration(
        color:
            kMyoroTestColors[faker.randomGenerator.integer(
              kMyoroTestColors.length,
            )],
      ),
      columnSpacing: faker.randomGenerator.decimal(scale: 20),
      titleCellTextStyle: typography.randomTextStyle,
      loaderSize: faker.randomGenerator.decimal(scale: 100, min: 10),
      emptyMessageTextStyle: typography.randomTextStyle,
      errorMessageTextStyle: typography.randomTextStyle,
      dialogPadding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
    );
  }

  factory MyoroTableV2ThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    final TextStyle headlineLarge = textTheme.headlineLarge!;

    return MyoroTableV2ThemeExtension(
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
        border: Border.all(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      columnSpacing: 10,
      titleCellTextStyle: textTheme.bodyMedium!,
      loaderSize: 35,
      emptyMessageTextStyle: headlineLarge,
      errorMessageTextStyle: headlineLarge.copyWith(
        fontSize: MyoroFontSizeEnum.extraLarge.size,
        color: colorScheme.error,
      ),
      dialogPadding: const EdgeInsets.all(15),
    );
  }

  @override
  MyoroTableV2ThemeExtension copyWith({
    BoxDecoration? decoration,
    double? columnSpacing,
    TextStyle? titleCellTextStyle,
    double? loaderSize,
    TextStyle? emptyMessageTextStyle,
    TextStyle? errorMessageTextStyle,
    EdgeInsets? dialogPadding,
  }) {
    return MyoroTableV2ThemeExtension(
      decoration: decoration ?? this.decoration,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      titleCellTextStyle: titleCellTextStyle ?? this.titleCellTextStyle,
      loaderSize: loaderSize ?? this.loaderSize,
      emptyMessageTextStyle:
          emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      errorMessageTextStyle:
          errorMessageTextStyle ?? this.errorMessageTextStyle,
      dialogPadding: dialogPadding ?? this.dialogPadding,
    );
  }

  @override
  MyoroTableV2ThemeExtension lerp(
    covariant ThemeExtension<MyoroTableV2ThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableV2ThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      titleCellTextStyle: TextStyle.lerp(
        titleCellTextStyle,
        other.titleCellTextStyle,
        t,
      ),
      loaderSize: lerpDouble(loaderSize, other.loaderSize, t),
      emptyMessageTextStyle: TextStyle.lerp(
        emptyMessageTextStyle,
        other.emptyMessageTextStyle,
        t,
      ),
      errorMessageTextStyle: TextStyle.lerp(
        errorMessageTextStyle,
        other.errorMessageTextStyle,
        t,
      ),
      dialogPadding: EdgeInsets.lerp(dialogPadding, other.dialogPadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableV2ThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == decoration &&
        other.titleCellTextStyle == titleCellTextStyle &&
        other.loaderSize == loaderSize &&
        other.errorMessageTextStyle == errorMessageTextStyle &&
        other.dialogPadding == dialogPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      decoration,
      titleCellTextStyle,
      loaderSize,
      errorMessageTextStyle,
      dialogPadding,
    );
  }

  @override
  String toString() =>
      'MyoroTableV2ThemeExtension(\n'
      '  decoration: $decoration,\n'
      '  titleCellTextStyle: $titleCellTextStyle,\n'
      '  loaderSize: $loaderSize,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      '  dialogPadding: $dialogPadding,\n'
      ');';
}
