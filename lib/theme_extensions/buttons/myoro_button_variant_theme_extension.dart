import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of the [Color]s used in [MyoroButtonVariantEnum].
///
/// TODO: Needs to be tested.
@immutable
class MyoroButtonVariantThemeExtension
    extends ThemeExtension<MyoroButtonVariantThemeExtension> {
  final Color primaryIdleBackgroundColor;
  final Color primaryHoverBackgroundColor;
  final Color primaryTapBackgroundColor;

  final Color primaryIdleContentColor;
  final Color primaryHoverContentColor;
  final Color primaryTapContentColor;

  final Color secondaryIdleBackgroundColor;
  final Color secondaryHoverBackgroundColor;
  final Color secondaryTapBackgroundColor;

  final Color secondaryIdleContentColor;
  final Color secondaryHoverContentColor;
  final Color secondaryTapContentColor;

  const MyoroButtonVariantThemeExtension({
    required this.primaryIdleBackgroundColor,
    required this.primaryHoverBackgroundColor,
    required this.primaryTapBackgroundColor,
    required this.primaryIdleContentColor,
    required this.primaryHoverContentColor,
    required this.primaryTapContentColor,
    required this.secondaryIdleBackgroundColor,
    required this.secondaryHoverBackgroundColor,
    required this.secondaryTapBackgroundColor,
    required this.secondaryIdleContentColor,
    required this.secondaryHoverContentColor,
    required this.secondaryTapContentColor,
  });

  MyoroButtonVariantThemeExtension.fake()
    : primaryIdleBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      primaryHoverBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      primaryTapBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      primaryIdleContentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      primaryHoverContentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      primaryTapContentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      secondaryIdleBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      secondaryHoverBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      secondaryTapBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      secondaryIdleContentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      secondaryHoverContentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      secondaryTapContentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )];

  MyoroButtonVariantThemeExtension.builder(ColorScheme colorScheme)
    : primaryIdleBackgroundColor = colorScheme.primary,
      primaryHoverBackgroundColor = colorScheme.onPrimary.withValues(
        alpha: 0.15,
      ),
      primaryTapBackgroundColor = colorScheme.onPrimary.withValues(alpha: 0.5),
      primaryIdleContentColor = colorScheme.onPrimary,
      primaryHoverContentColor = colorScheme.onPrimary,
      primaryTapContentColor = colorScheme.onPrimary,
      secondaryIdleBackgroundColor = colorScheme.onPrimary,
      secondaryHoverBackgroundColor = myoroDarkenColor(
        colorScheme.onPrimary,
        0.1,
      ),
      secondaryTapBackgroundColor = myoroDarkenColor(
        colorScheme.onPrimary,
        0.2,
      ),
      secondaryIdleContentColor = colorScheme.primary,
      secondaryHoverContentColor = colorScheme.primary,
      secondaryTapContentColor = colorScheme.primary;

  @override
  MyoroButtonVariantThemeExtension copyWith({
    Color? primaryIdleBackgroundColor,
    Color? primaryHoverBackgroundColor,
    Color? primaryTapBackgroundColor,
    Color? primaryIdleContentColor,
    Color? primaryHoverContentColor,
    Color? primaryTapContentColor,
    Color? secondaryIdleBackgroundColor,
    Color? secondaryHoverBackgroundColor,
    Color? secondaryTapBackgroundColor,
    Color? secondaryIdleContentColor,
    Color? secondaryHoverContentColor,
    Color? secondaryTapContentColor,
  }) {
    return MyoroButtonVariantThemeExtension(
      primaryIdleBackgroundColor:
          primaryIdleBackgroundColor ?? this.primaryIdleBackgroundColor,
      primaryHoverBackgroundColor:
          primaryHoverBackgroundColor ?? this.primaryHoverBackgroundColor,
      primaryTapBackgroundColor:
          primaryTapBackgroundColor ?? this.primaryTapBackgroundColor,
      primaryIdleContentColor:
          primaryIdleContentColor ?? this.primaryIdleContentColor,
      primaryHoverContentColor:
          primaryHoverContentColor ?? this.primaryHoverContentColor,
      primaryTapContentColor:
          primaryTapContentColor ?? this.primaryTapContentColor,
      secondaryIdleBackgroundColor:
          secondaryIdleBackgroundColor ?? this.secondaryIdleBackgroundColor,
      secondaryHoverBackgroundColor:
          secondaryHoverBackgroundColor ?? this.secondaryHoverBackgroundColor,
      secondaryTapBackgroundColor:
          secondaryTapBackgroundColor ?? this.secondaryTapBackgroundColor,
      secondaryIdleContentColor:
          secondaryIdleContentColor ?? this.secondaryIdleContentColor,
      secondaryHoverContentColor:
          secondaryHoverContentColor ?? this.secondaryHoverContentColor,
      secondaryTapContentColor:
          secondaryTapContentColor ?? this.secondaryTapContentColor,
    );
  }

  @override
  MyoroButtonVariantThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonVariantThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroButtonVariantThemeExtension) return this;
    return copyWith(
      primaryIdleBackgroundColor: Color.lerp(
        primaryIdleBackgroundColor,
        other.primaryIdleBackgroundColor,
        t,
      ),
      primaryHoverBackgroundColor: Color.lerp(
        primaryHoverBackgroundColor,
        other.primaryHoverBackgroundColor,
        t,
      ),
      primaryTapBackgroundColor: Color.lerp(
        primaryTapBackgroundColor,
        other.primaryTapBackgroundColor,
        t,
      ),
      primaryIdleContentColor: Color.lerp(
        primaryIdleContentColor,
        other.primaryIdleContentColor,
        t,
      ),
      primaryHoverContentColor: Color.lerp(
        primaryHoverContentColor,
        other.primaryHoverContentColor,
        t,
      ),
      primaryTapContentColor: Color.lerp(
        primaryTapContentColor,
        other.primaryTapContentColor,
        t,
      ),
      secondaryIdleBackgroundColor: Color.lerp(
        secondaryIdleBackgroundColor,
        other.secondaryIdleBackgroundColor,
        t,
      ),
      secondaryHoverBackgroundColor: Color.lerp(
        secondaryHoverBackgroundColor,
        other.secondaryHoverBackgroundColor,
        t,
      ),
      secondaryTapBackgroundColor: Color.lerp(
        secondaryTapBackgroundColor,
        other.secondaryTapBackgroundColor,
        t,
      ),
      secondaryIdleContentColor: Color.lerp(
        secondaryIdleContentColor,
        other.secondaryIdleContentColor,
        t,
      ),
      secondaryHoverContentColor: Color.lerp(
        secondaryHoverContentColor,
        other.secondaryHoverContentColor,
        t,
      ),
      secondaryTapContentColor: Color.lerp(
        secondaryTapContentColor,
        other.secondaryTapContentColor,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonVariantThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryIdleBackgroundColor == primaryIdleBackgroundColor &&
        other.primaryHoverBackgroundColor == primaryHoverBackgroundColor &&
        other.primaryTapBackgroundColor == primaryTapBackgroundColor &&
        other.primaryIdleContentColor == primaryIdleContentColor &&
        other.primaryHoverContentColor == primaryHoverContentColor &&
        other.primaryTapContentColor == primaryTapContentColor &&
        other.secondaryIdleBackgroundColor == secondaryIdleBackgroundColor &&
        other.secondaryHoverBackgroundColor == secondaryHoverBackgroundColor &&
        other.secondaryTapBackgroundColor == secondaryTapBackgroundColor &&
        other.secondaryIdleContentColor == secondaryIdleContentColor &&
        other.secondaryHoverContentColor == secondaryHoverContentColor &&
        other.secondaryTapContentColor == secondaryTapContentColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryIdleBackgroundColor,
      primaryHoverBackgroundColor,
      primaryTapBackgroundColor,
      primaryIdleContentColor,
      primaryHoverContentColor,
      primaryTapContentColor,
      secondaryIdleBackgroundColor,
      secondaryHoverBackgroundColor,
      secondaryTapBackgroundColor,
      secondaryIdleContentColor,
      secondaryHoverContentColor,
      secondaryTapContentColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonVariantThemeExtension(\n'
      '  primaryIdleBackgroundColor: $primaryIdleBackgroundColor,\n'
      '  primaryHoverBackgroundColor: $primaryHoverBackgroundColor,\n'
      '  primaryTapBackgroundColor: $primaryTapBackgroundColor,\n'
      '  primaryIdleContentColor: $primaryIdleContentColor,\n'
      '  primaryHoverContentColor: $primaryHoverContentColor,\n'
      '  primaryTapContentColor: $primaryTapContentColor,\n'
      '  secondaryIdleBackgroundColor: $primaryIdleBackgroundColor,\n'
      '  secondaryHoverBackgroundColor: $primaryHoverBackgroundColor,\n'
      '  secondaryTapBackgroundColor: $primaryTapBackgroundColor,\n'
      '  secondaryIdleContentColor: $secondaryIdleContentColor,\n'
      '  secondaryHoverContentColor: $secondaryHoverContentColor,\n'
      '  secondaryTapContentColor: $secondaryTapContentColor,\n'
      ');';
}
