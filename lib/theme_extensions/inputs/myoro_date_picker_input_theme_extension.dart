import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroDatePickerInput].
@immutable
class MyoroDatePickerInputThemeExtension
    extends ThemeExtension<MyoroDatePickerInputThemeExtension> {
  const MyoroDatePickerInputThemeExtension();

  const MyoroDatePickerInputThemeExtension.builder();

  @override
  MyoroDatePickerInputThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroDatePickerInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroDatePickerInputThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDatePickerInputThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroDatePickerInputThemeExtension(\n'
      ');';
}
