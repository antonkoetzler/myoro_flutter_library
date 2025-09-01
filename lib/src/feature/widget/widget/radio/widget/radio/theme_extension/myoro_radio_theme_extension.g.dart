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
    Color? hoverColor,
    TextStyle? labelTextStyle,
    double? spacing,
    double? splashRadius,
  }) {
    return MyoroRadioThemeExtension(
      activeColor: activeColor ?? self.activeColor,
      hoverColor: hoverColor ?? self.hoverColor,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
      spacing: spacing ?? self.spacing,
      splashRadius: splashRadius ?? self.splashRadius,
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
