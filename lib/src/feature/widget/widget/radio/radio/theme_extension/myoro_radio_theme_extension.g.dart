// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_radio_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroRadioThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroRadioThemeExtension with _$MyoroRadioThemeExtensionMixin {}
/// ```
mixin _$MyoroRadioThemeExtensionMixin on ThemeExtension<MyoroRadioThemeExtension> {
  MyoroRadioThemeExtension get self => this as MyoroRadioThemeExtension;

  @override
  MyoroRadioThemeExtension copyWith({
    Color? activeColor,
    bool activeColorProvided = true,
    Color? hoverColor,
    bool hoverColorProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    double? spacing,
    bool spacingProvided = true,
    double? splashRadius,
    bool splashRadiusProvided = true,
  }) {
    return MyoroRadioThemeExtension(
      activeColor: activeColorProvided ? (activeColor ?? self.activeColor) : null,
      hoverColor: hoverColorProvided ? (hoverColor ?? self.hoverColor) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      splashRadius: splashRadiusProvided ? (splashRadius ?? self.splashRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRadioThemeExtension &&
        other.runtimeType == runtimeType &&
        other.activeColor == self.activeColor &&
        other.hoverColor == self.hoverColor &&
        other.labelTextStyle == self.labelTextStyle &&
        other.spacing == self.spacing &&
        other.splashRadius == self.splashRadius;
  }

  @override
  int get hashCode {
    return Object.hash(self.activeColor, self.hoverColor, self.labelTextStyle, self.spacing, self.splashRadius);
  }

  @override
  String toString() =>
      'MyoroRadioThemeExtension(\n'
      '  activeColor: ${self.activeColor},\n'
      '  hoverColor: ${self.hoverColor},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  spacing: ${self.spacing},\n'
      '  splashRadius: ${self.splashRadius},\n'
      ');';
}
