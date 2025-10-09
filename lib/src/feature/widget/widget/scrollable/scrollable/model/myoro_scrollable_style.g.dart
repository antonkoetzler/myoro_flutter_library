// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_scrollable_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScrollableStyle] once the code is generated.
///
/// ```dart
/// class MyoroScrollableStyle with _$MyoroScrollableStyleMixin {}
/// ```
mixin _$MyoroScrollableStyleMixin {
  MyoroScrollableStyle get self => this as MyoroScrollableStyle;

  MyoroScrollableStyle copyWith({
    Color? gradientTopColor,
    bool gradientTopColorProvided = true,
    Color? gradientBottomColor,
    bool gradientBottomColorProvided = true,
    Color? gradientLeftColor,
    bool gradientLeftColorProvided = true,
    Color? gradientRightColor,
    bool gradientRightColorProvided = true,
    double? gradientSize,
    bool gradientSizeProvided = true,
    Color? gradientColor,
    bool gradientColorProvided = true,
  }) {
    return MyoroScrollableStyle(
      gradientTopColor: gradientTopColorProvided ? (gradientTopColor ?? self.gradientTopColor) : null,
      gradientBottomColor: gradientBottomColorProvided ? (gradientBottomColor ?? self.gradientBottomColor) : null,
      gradientLeftColor: gradientLeftColorProvided ? (gradientLeftColor ?? self.gradientLeftColor) : null,
      gradientRightColor: gradientRightColorProvided ? (gradientRightColor ?? self.gradientRightColor) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      gradientColor: gradientColorProvided ? (gradientColor ?? self.gradientColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableStyle &&
        other.runtimeType == runtimeType &&
        other.gradientTopColor == self.gradientTopColor &&
        other.gradientBottomColor == self.gradientBottomColor &&
        other.gradientLeftColor == self.gradientLeftColor &&
        other.gradientRightColor == self.gradientRightColor &&
        other.gradientSize == self.gradientSize &&
        other.gradientColor == self.gradientColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.gradientTopColor,
      self.gradientBottomColor,
      self.gradientLeftColor,
      self.gradientRightColor,
      self.gradientSize,
      self.gradientColor,
    );
  }

  @override
  String toString() =>
      'MyoroScrollableStyle(\n'
      '  gradientTopColor: ${self.gradientTopColor},\n'
      '  gradientBottomColor: ${self.gradientBottomColor},\n'
      '  gradientLeftColor: ${self.gradientLeftColor},\n'
      '  gradientRightColor: ${self.gradientRightColor},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  gradientColor: ${self.gradientColor},\n'
      ');';
}
