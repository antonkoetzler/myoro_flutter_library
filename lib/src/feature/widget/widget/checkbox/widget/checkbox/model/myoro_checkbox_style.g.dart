// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_checkbox_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCheckboxStyle] once the code is generated.
///
/// ```dart
/// class MyoroCheckboxStyle with _$MyoroCheckboxStyleMixin {}
/// ```
mixin _$MyoroCheckboxStyleMixin {
  MyoroCheckboxStyle get self => this as MyoroCheckboxStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxStyle &&
        other.runtimeType == runtimeType &&
        other.checkboxActiveColor == self.checkboxActiveColor &&
        other.checkboxCheckColor == self.checkboxCheckColor &&
        other.checkboxHoverColor == self.checkboxHoverColor &&
        other.checkboxFocusColor == self.checkboxFocusColor &&
        other.checkboxSplashRadius == self.checkboxSplashRadius &&
        other.labelTextStyle == self.labelTextStyle &&
        other.labelMaxLines == self.labelMaxLines &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.checkboxActiveColor,
      self.checkboxCheckColor,
      self.checkboxHoverColor,
      self.checkboxFocusColor,
      self.checkboxSplashRadius,
      self.labelTextStyle,
      self.labelMaxLines,
      self.spacing,
    );
  }

  @override
  String toString() =>
      'MyoroCheckboxStyle(\n'
      '  checkboxActiveColor: ${self.checkboxActiveColor},\n'
      '  checkboxCheckColor: ${self.checkboxCheckColor},\n'
      '  checkboxHoverColor: ${self.checkboxHoverColor},\n'
      '  checkboxFocusColor: ${self.checkboxFocusColor},\n'
      '  checkboxSplashRadius: ${self.checkboxSplashRadius},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  labelMaxLines: ${self.labelMaxLines},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
