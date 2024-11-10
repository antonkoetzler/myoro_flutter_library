import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroInput].
final class MyoroInputThemeExtension extends ThemeExtension<MyoroInputThemeExtension> {
  /// Border for [MyoroInputTypeEnum.underlined].
  final InputBorder underlinedBorder;

  /// Border for [MyoroInputTypeEnum.outlined].
  final InputBorder outlinedBorder;

  const MyoroInputThemeExtension({
    required this.underlinedBorder,
    required this.outlinedBorder,
  });

  @override
  MyoroInputThemeExtension copyWith({
    InputBorder? underlinedBorder,
    InputBorder? outlinedBorder,
  }) {
    return MyoroInputThemeExtension(
      underlinedBorder: underlinedBorder ?? this.underlinedBorder,
      outlinedBorder: outlinedBorder ?? this.outlinedBorder,
    );
  }

  @override
  ThemeExtension<MyoroInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroInputThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputThemeExtension) return this;
    return copyWith(
      underlinedBorder: MyoroLerpHelper.lerp(underlinedBorder, other.underlinedBorder, t),
      outlinedBorder: MyoroLerpHelper.lerp(outlinedBorder, other.outlinedBorder, t),
    );
  }
}
