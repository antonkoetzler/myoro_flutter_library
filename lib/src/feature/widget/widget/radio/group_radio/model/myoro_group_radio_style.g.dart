// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_radio_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroGroupRadioStyle] once the code is generated.
///
/// ```dart
/// class MyoroGroupRadioStyle with _$MyoroGroupRadioStyleMixin {}
/// ```
mixin _$MyoroGroupRadioStyleMixin {
  MyoroGroupRadioStyle get self => this as MyoroGroupRadioStyle;

  MyoroGroupRadioStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
  }) {
    return MyoroGroupRadioStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? self.runSpacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.runSpacing == self.runSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.runSpacing);
  }

  @override
  String toString() =>
      'MyoroGroupRadioStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  runSpacing: ${self.runSpacing},\n'
      ');';
}
