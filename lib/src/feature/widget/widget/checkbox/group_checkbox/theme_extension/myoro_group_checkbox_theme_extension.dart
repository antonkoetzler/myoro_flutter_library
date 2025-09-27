
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroGroupCheckbox].
@immutable
@myoroThemeExtension
class MyoroGroupCheckboxThemeExtension extends ThemeExtension<MyoroGroupCheckboxThemeExtension>
    with _$MyoroGroupCheckboxThemeExtensionMixin
    implements MyoroGroupCheckboxStyle {
  const MyoroGroupCheckboxThemeExtension({
    this.checkboxActiveColor,
    this.checkboxCheckColor,
    this.checkboxHoverColor,
    this.checkboxFocusColor,
    this.checkboxSplashRadius,
    this.labelTextStyle,
    this.labelMaxLines,
    this.spacing,
    this.runSpacing,
  });

  // coverage:ignore-start
  factory MyoroGroupCheckboxThemeExtension.fake() {
    return MyoroGroupCheckboxThemeExtension(
      checkboxActiveColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxCheckColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxFocusColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxSplashRadius: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelMaxLines: faker.randomGenerator.boolean() ? faker.randomGenerator.integer(5) : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      runSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

  const MyoroGroupCheckboxThemeExtension.builder()
    : checkboxActiveColor = null,
      checkboxCheckColor = null,
      checkboxHoverColor = null,
      checkboxFocusColor = null,
      checkboxSplashRadius = null,
      labelTextStyle = null,
      labelMaxLines = null,
      spacing = kMyoroMultiplier,
      runSpacing = kMyoroMultiplier;

  @override
  final Color? checkboxActiveColor;

  @override
  final Color? checkboxCheckColor;

  @override
  final Color? checkboxHoverColor;

  @override
  final Color? checkboxFocusColor;

  @override
  final double? checkboxSplashRadius;

  @override
  final TextStyle? labelTextStyle;

  @override
  final int? labelMaxLines;

  @override
  final double? spacing;

  @override
  final double? runSpacing;

  @override
  MyoroGroupCheckboxThemeExtension lerp(covariant MyoroGroupCheckboxThemeExtension? other, double t) {
    if (other is! MyoroGroupCheckboxThemeExtension) return this;
    final style = MyoroGroupCheckboxStyle.lerp(this, other, t);
    return MyoroGroupCheckboxThemeExtension(
      checkboxActiveColor: style.checkboxActiveColor,
      checkboxCheckColor: style.checkboxCheckColor,
      checkboxHoverColor: style.checkboxHoverColor,
      checkboxFocusColor: style.checkboxFocusColor,
      checkboxSplashRadius: style.checkboxSplashRadius,
      labelTextStyle: style.labelTextStyle,
      labelMaxLines: style.labelMaxLines,
      spacing: style.spacing,
      runSpacing: style.runSpacing,
    );
  }
}
