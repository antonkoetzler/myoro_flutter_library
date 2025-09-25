// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_radio_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroRadioStyle] once the code is generated.
///
/// ```dart
/// class MyoroRadioStyle with _$MyoroRadioStyleMixin {}
/// ```
mixin _$MyoroRadioStyleMixin {
  MyoroRadioStyle get self => this as MyoroRadioStyle;

  MyoroRadioStyle copyWith({
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
    return MyoroRadioStyle(
      activeColor: activeColorProvided ? (activeColor ?? self.activeColor) : null,
      hoverColor: hoverColorProvided ? (hoverColor ?? self.hoverColor) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      splashRadius: splashRadiusProvided ? (splashRadius ?? self.splashRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRadioStyle &&
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
      'MyoroRadioStyle(\n'
      '  activeColor: ${self.activeColor},\n'
      '  hoverColor: ${self.hoverColor},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  spacing: ${self.spacing},\n'
      '  splashRadius: ${self.splashRadius},\n'
      ');';
}
