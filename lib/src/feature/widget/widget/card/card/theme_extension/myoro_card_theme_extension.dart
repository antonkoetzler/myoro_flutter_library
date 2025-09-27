
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCard].
@immutable
@myoroThemeExtension
class MyoroCardThemeExtension extends ThemeExtension<MyoroCardThemeExtension>
    with _$MyoroCardThemeExtensionMixin
    implements MyoroCardStyle {
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
      padding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      titleCardSpacing = kMyoroMultiplier * 2.5,
      titleTextStyle = textTheme.titleMedium!,
      constraints = null;

  @override
  final Color? backgroundColor;

  @override
  final Border? border;

  @override
  final BorderRadius? borderRadius;

  @override
  final EdgeInsets? padding;

  @override
  final double? titleCardSpacing;

  @override
  final TextStyle? titleTextStyle;

  @override
  final BoxConstraints? constraints;

  @override
  MyoroCardThemeExtension lerp(covariant MyoroCardThemeExtension? other, double t) {
    if (other is! MyoroCardThemeExtension) return this;
    final style = MyoroCardStyle.lerp(this, other, t);
    return MyoroCardThemeExtension(
      backgroundColor: style.backgroundColor,
      border: style.border,
      borderRadius: style.borderRadius,
      padding: style.padding,
      titleCardSpacing: style.titleCardSpacing,
      titleTextStyle: style.titleTextStyle,
      constraints: style.constraints,
    );
  }
}
