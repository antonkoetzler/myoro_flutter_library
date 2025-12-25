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
    double? spacing,
    bool spacingProvided = true,
    BoxDecoration? decoration,
    bool decorationProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    MyoroTextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    MyoroTextStyle? dataTextStyle,
    bool dataTextStyleProvided = true,
  }) {
    return MyoroFieldStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      decoration: decorationProvided ? (decoration ?? self.decoration) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      dataTextStyle: dataTextStyleProvided ? (dataTextStyle ?? self.dataTextStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFieldStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.decoration == self.decoration &&
        other.contentPadding == self.contentPadding &&
        other.labelTextStyle == self.labelTextStyle &&
        other.dataTextStyle == self.dataTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.decoration, self.contentPadding, self.labelTextStyle, self.dataTextStyle);
  }

  @override
  String toString() =>
      'MyoroFieldStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  decoration: ${self.decoration},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  dataTextStyle: ${self.dataTextStyle},\n'
      ');';
}
