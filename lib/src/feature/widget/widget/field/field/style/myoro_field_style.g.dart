// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_field_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFieldStyle] once the code is generated.
///
/// ```dart
/// class MyoroFieldStyle with _$MyoroFieldStyleMixin {}
/// ```
mixin _$MyoroFieldStyleMixin {
  MyoroFieldStyle get self => this as MyoroFieldStyle;

  MyoroFieldStyle copyWith({
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    TextStyle? dataTextStyle,
    bool dataTextStyleProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroFieldStyle(
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      dataTextStyle: dataTextStyleProvided ? (dataTextStyle ?? self.dataTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFieldStyle &&
        other.runtimeType == runtimeType &&
        other.labelTextStyle == self.labelTextStyle &&
        other.dataTextStyle == self.dataTextStyle &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.labelTextStyle, self.dataTextStyle, self.spacing);
  }

  @override
  String toString() =>
      'MyoroFieldStyle(\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  dataTextStyle: ${self.dataTextStyle},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
