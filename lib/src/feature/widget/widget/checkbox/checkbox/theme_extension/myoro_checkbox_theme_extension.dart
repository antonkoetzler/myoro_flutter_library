import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCheckbox]
@immutable
@myoroThemeExtension
class MyoroCheckboxThemeExtension extends ThemeExtension<MyoroCheckboxThemeExtension>
    with _$MyoroCheckboxThemeExtensionMixin
    implements MyoroCheckboxStyle {
  /// Default constructor.
  const MyoroCheckboxThemeExtension({
    this.checkboxActiveColor,
    this.checkboxCheckColor,
    this.checkboxHoverColor,
    this.checkboxFocusColor,
    this.checkboxSplashRadius,
    this.labelTextStyle,
    this.labelMaxLines,
    this.spacing,
    this.disabledColor,
  });

  /// Fake constructor.
  MyoroCheckboxThemeExtension.fake()
    : checkboxActiveColor = myoroNullableFake<Color>(),
      checkboxCheckColor = myoroNullableFake<Color>(),
      checkboxHoverColor = myoroNullableFake<Color>(),
      checkboxFocusColor = myoroNullableFake<Color>(),
      checkboxSplashRadius = myoroNullableFake<double>(),
      labelTextStyle = myoroNullableFake<TextStyle>(),
      labelMaxLines = myoroNullableFake<int>(),
      spacing = myoroNullableFake<double>(),
      disabledColor = myoroNullableFake<Color>();

  MyoroCheckboxThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme)
    : checkboxActiveColor = colorScheme.onPrimary,
      checkboxCheckColor = colorScheme.primary,
      checkboxHoverColor = MyoroColors.transparent,
      checkboxFocusColor = MyoroColors.transparent,
      checkboxSplashRadius = 0,
      labelTextStyle = textTheme.bodySmall!,
      labelMaxLines = 1,
      spacing = kMyoroMultiplier,
      disabledColor = isDarkMode ? colorScheme.onPrimary.darken(0.3) : colorScheme.onPrimary.brighten(0.3);

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
  final Color? disabledColor;

  @override
  MyoroCheckboxThemeExtension lerp(covariant MyoroCheckboxThemeExtension? other, double t) {
    if (other is! MyoroCheckboxThemeExtension) return this;
    final style = MyoroCheckboxStyle.lerp(this, other, t);
    return MyoroCheckboxThemeExtension(
      checkboxActiveColor: style.checkboxActiveColor,
      checkboxCheckColor: style.checkboxCheckColor,
      checkboxHoverColor: style.checkboxHoverColor,
      checkboxFocusColor: style.checkboxFocusColor,
      checkboxSplashRadius: style.checkboxSplashRadius,
      labelTextStyle: style.labelTextStyle,
      labelMaxLines: style.labelMaxLines,
      spacing: style.spacing,
      disabledColor: style.disabledColor,
    );
  }
}
