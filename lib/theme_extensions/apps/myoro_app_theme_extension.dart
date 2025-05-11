import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroApp].
@immutable
class MyoroAppThemeExtension extends ThemeExtension<MyoroAppThemeExtension> {
  const MyoroAppThemeExtension();

  const MyoroAppThemeExtension.builder();

  @override
  MyoroAppThemeExtension copyWith() => const MyoroAppThemeExtension();

  @override
  ThemeExtension<MyoroAppThemeExtension> lerp(
    covariant ThemeExtension<MyoroAppThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAppThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroAppThemeExtension(\n'
      ');';
}
