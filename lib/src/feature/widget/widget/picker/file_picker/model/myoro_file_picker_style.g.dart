// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_file_picker_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilePickerStyle] once the code is generated.
///
/// ```dart
/// class MyoroFilePickerStyle with _$MyoroFilePickerStyleMixin {}
/// ```
mixin _$MyoroFilePickerStyleMixin {
  MyoroFilePickerStyle get self => this as MyoroFilePickerStyle;

  MyoroFilePickerStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    TextStyle? textStyle,
    bool textStyleProvided = true,
  }) {
    return MyoroFilePickerStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilePickerStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.textStyle);
  }

  @override
  String toString() =>
      'MyoroFilePickerStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
