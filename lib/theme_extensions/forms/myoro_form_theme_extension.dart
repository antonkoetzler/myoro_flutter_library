import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroForm].
final class MyoroFormThemeExtension extends ThemeExtension<MyoroFormThemeExtension> {
  const MyoroFormThemeExtension();

  const MyoroFormThemeExtension.builder();

  @override
  MyoroFormThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroFormThemeExtension> lerp(covariant ThemeExtension<MyoroFormThemeExtension>? other, double t) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFormThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroFormThemeExtension(\n'
      ');';
}
