import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_radio_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroRadio].
@immutable
@myoroThemeExtension
class MyoroRadioThemeExtension extends ThemeExtension<MyoroRadioThemeExtension> with _$MyoroRadioThemeExtensionMixin implements MyoroRadioStyle {
  const MyoroRadioThemeExtension({this.activeColor, this.hoverColor, this.labelTextStyle, this.spacing, this.splashRadius});

  // coverage:ignore-start
  MyoroRadioThemeExtension.fake()
    : activeColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      hoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      splashRadius = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  MyoroRadioThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : activeColor = colorScheme.onPrimary,
      hoverColor = colorScheme.onPrimary.withValues(alpha: 0.3),
      labelTextStyle = textTheme.headlineSmall!,
      spacing = 5,
      splashRadius = 15;

  /// Color of the radio itself.
  @override
  final Color? activeColor;

  /// Color of background when hovered.
  @override
  final Color? hoverColor;

  /// [TextStyle] of [MyoroRadio.label].
  @override
  final TextStyle? labelTextStyle;

  /// Spacing in between the radio and [MyoroRadio.label].
  @override
  final double? spacing;

  /// Background (splash) color size.
  @override
  final double? splashRadius;

  @override
  MyoroRadioThemeExtension lerp(covariant MyoroRadioThemeExtension? other, double t) {
    if (other is! MyoroRadioThemeExtension) return this;
    final style = MyoroRadioStyle.lerp(this, other, t);
    return MyoroRadioThemeExtension(
      activeColor: style.activeColor,
      hoverColor: style.hoverColor,
      labelTextStyle: style.labelTextStyle,
      spacing: style.spacing,
      splashRadius: style.splashRadius,
    );
  }
}
