import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
class MyoroButtonThemeExtension extends ThemeExtension<MyoroButtonThemeExtension> {
  /// Border radius.
  final BorderRadius borderRadius;

  const MyoroButtonThemeExtension({required this.borderRadius});

  MyoroButtonThemeExtension.fake()
    : borderRadius = BorderRadius.circular(faker.randomGenerator.decimal(scale: 50, min: 1));

  MyoroButtonThemeExtension.builder()
    : borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  @override
  MyoroButtonThemeExtension copyWith({BorderRadius? borderRadius}) {
    return MyoroButtonThemeExtension(borderRadius: borderRadius ?? this.borderRadius);
  }

  @override
  MyoroButtonThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroButtonThemeExtension) return this;
    return copyWith(borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.borderRadius == borderRadius;
  }

  @override
  int get hashCode {
    return Object.hashAll([borderRadius]);
  }

  @override
  String toString() =>
      'MyoroButtonThemeExtension(\n'
      '  borderRadius: $borderRadius,\n'
      ');';
}
