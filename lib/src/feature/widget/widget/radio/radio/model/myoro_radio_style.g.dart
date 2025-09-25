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
