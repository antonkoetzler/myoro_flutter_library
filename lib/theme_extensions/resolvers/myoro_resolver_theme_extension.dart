import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroResolver].
class MyoroResolverThemeExtension extends ThemeExtension<MyoroResolverThemeExtension> {
  const MyoroResolverThemeExtension();

  const MyoroResolverThemeExtension.builder();

  @override
  MyoroResolverThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroResolverThemeExtension> lerp(
    covariant ThemeExtension<MyoroResolverThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResolverThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroResolverThemeExtension(\n'
      ');';
}
