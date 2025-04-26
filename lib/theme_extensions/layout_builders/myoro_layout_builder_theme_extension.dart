import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroLayoutBuilder].
@immutable
class MyoroLayoutBuilderThemeExtension extends ThemeExtension<MyoroLayoutBuilderThemeExtension> {
  const MyoroLayoutBuilderThemeExtension();

  const MyoroLayoutBuilderThemeExtension.builder();

  @override
  MyoroLayoutBuilderThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroLayoutBuilderThemeExtension> lerp(
    covariant ThemeExtension<MyoroLayoutBuilderThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroLayoutBuilderThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroLayoutBuilderThemeExtension(\n'
      ');';
}
