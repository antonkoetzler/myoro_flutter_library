import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCard].
@immutable
@myoroThemeExtension
class MyoroCardThemeExtension extends ThemeExtension<MyoroCardThemeExtension> with _$MyoroCardThemeExtensionMixin {
  const MyoroCardThemeExtension({
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.padding,
    this.titleCardSpacing,
    this.titleTextStyle,
    this.constraints,
  });

  // coverage:ignore-start
  MyoroCardThemeExtension.fake()
    : backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      titleCardSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      constraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null;
  // coverage:ignore-end

  MyoroCardThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : backgroundColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      padding = const EdgeInsets.all(10),
      titleCardSpacing = 10,
      titleTextStyle = textTheme.titleMedium!,
      constraints = null;

  /// Background color of the card.
  final Color? backgroundColor;

  /// Border of the card.
  final Border? border;

  /// Border radius of the card.
  final BorderRadius? borderRadius;

  /// Padding of [MyoroCard.child].
  final EdgeInsets? padding;

  /// Spacing in between [_Title] & [_Card].
  final double? titleCardSpacing;

  /// Text style of [MyoroCard.title].
  final TextStyle? titleTextStyle;

  /// [BoxConstraints]
  final BoxConstraints? constraints;

  @override
  MyoroCardThemeExtension lerp(covariant ThemeExtension<MyoroCardThemeExtension>? other, double t) {
    if (other is! MyoroCardThemeExtension) return this;

    final backgroundColor = Color.lerp(this.backgroundColor, other.backgroundColor, t);
    final border = Border.lerp(this.border, other.border, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final padding = EdgeInsets.lerp(this.padding, other.padding, t);
    final titleCardSpacing = lerpDouble(this.titleCardSpacing, other.titleCardSpacing, t);
    final titleTextStyle = TextStyle.lerp(this.titleTextStyle, other.titleTextStyle, t);
    final constraints = BoxConstraints.lerp(this.constraints, other.constraints, t);

    return copyWith(
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null,
      border: border,
      borderProvided: border != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
      padding: padding,
      paddingProvided: padding != null,
      titleCardSpacing: titleCardSpacing,
      titleCardSpacingProvided: titleCardSpacing != null,
      titleTextStyle: titleTextStyle,
      titleTextStyleProvided: titleTextStyle != null,
      constraints: constraints,
      constraintsProvided: constraints != null,
    );
  }
}
