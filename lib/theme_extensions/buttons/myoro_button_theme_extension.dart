import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroButton].
///
/// TODO: Needs to be tested.
final class MyoroButtonThemeExtension
    extends ThemeExtension<MyoroButtonThemeExtension> {
  /// Background color when idle ([MyoroTapStatusEnum.idle]).
  final Color idleBackgroundColor;

  /// Background color when hovered ([MyoroTapStatusEnum.hover]).
  final Color hoverBackgroundColor;

  /// Background color when pressed ([MyoroTapStatusEnum.tap]).
  final Color tapBackgroundColor;

  /// Border radius.
  final BorderRadius borderRadius;

  const MyoroButtonThemeExtension({
    required this.idleBackgroundColor,
    required this.hoverBackgroundColor,
    required this.tapBackgroundColor,
    required this.borderRadius,
  });

  MyoroButtonThemeExtension.fake()
    : idleBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      hoverBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      tapBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      borderRadius = BorderRadius.circular(
        faker.randomGenerator.decimal(scale: 50, min: 1),
      );

  MyoroButtonThemeExtension.builder(ColorScheme colorScheme)
    : idleBackgroundColor = colorScheme.primary,
      hoverBackgroundColor = colorScheme.onPrimary.withValues(alpha: 0.25),
      tapBackgroundColor = colorScheme.onPrimary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  @override
  MyoroButtonThemeExtension copyWith({
    Color? idleBackgroundColor,
    Color? hoverBackgroundColor,
    Color? tapBackgroundColor,
    BorderRadius? borderRadius,
  }) {
    return MyoroButtonThemeExtension(
      idleBackgroundColor: idleBackgroundColor ?? this.idleBackgroundColor,
      hoverBackgroundColor: hoverBackgroundColor ?? this.hoverBackgroundColor,
      tapBackgroundColor: tapBackgroundColor ?? this.tapBackgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  MyoroButtonThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroButtonThemeExtension) return this;
    return copyWith(
      idleBackgroundColor: Color.lerp(
        idleBackgroundColor,
        other.idleBackgroundColor,
        t,
      ),
      hoverBackgroundColor: Color.lerp(
        hoverBackgroundColor,
        other.hoverBackgroundColor,
        t,
      ),
      tapBackgroundColor: Color.lerp(
        tapBackgroundColor,
        other.tapBackgroundColor,
        t,
      ),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.idleBackgroundColor == idleBackgroundColor &&
        other.hoverBackgroundColor == hoverBackgroundColor &&
        other.tapBackgroundColor == tapBackgroundColor &&
        other.borderRadius == borderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      idleBackgroundColor,
      hoverBackgroundColor,
      tapBackgroundColor,
      borderRadius,
    );
  }

  @override
  String toString() =>
      'MyoroButtonThemeExtension(\n'
      '  idleBackgroundColor: $idleBackgroundColor,\n'
      '  hoverBackgroundColor: $hoverBackgroundColor,\n'
      '  tapBackgroundColor: $tapBackgroundColor,\n'
      '  borderRadius: $borderRadius,\n'
      ');';
}
