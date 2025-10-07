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
    Color? backgroundColor,
    bool backgroundColorProvided = true,
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
    EdgeInsets? padding,
    bool paddingProvided = true,
    EdgeInsets? margin,
    bool marginProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Border? border,
    bool borderProvided = true,
    List<BoxShadow>? boxShadow,
    bool boxShadowProvided = true,
  }) {
    return MyoroScrollableStyle(
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
      gradientTopColor: gradientTopColorProvided ? (gradientTopColor ?? self.gradientTopColor) : null,
      gradientBottomColor: gradientBottomColorProvided ? (gradientBottomColor ?? self.gradientBottomColor) : null,
      gradientLeftColor: gradientLeftColorProvided ? (gradientLeftColor ?? self.gradientLeftColor) : null,
      gradientRightColor: gradientRightColorProvided ? (gradientRightColor ?? self.gradientRightColor) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      margin: marginProvided ? (margin ?? self.margin) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      border: borderProvided ? (border ?? self.border) : null,
      boxShadow: boxShadowProvided ? (boxShadow ?? self.boxShadow) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableStyle &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.gradientTopColor == self.gradientTopColor &&
        other.gradientBottomColor == self.gradientBottomColor &&
        other.gradientLeftColor == self.gradientLeftColor &&
        other.gradientRightColor == self.gradientRightColor &&
        other.gradientSize == self.gradientSize &&
        other.padding == self.padding &&
        other.margin == self.margin &&
        other.borderRadius == self.borderRadius &&
        other.border == self.border &&
        other.boxShadow == self.boxShadow;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.gradientTopColor,
      self.gradientBottomColor,
      self.gradientLeftColor,
      self.gradientRightColor,
      self.gradientSize,
      self.padding,
      self.margin,
      self.borderRadius,
      self.border,
      self.boxShadow,
    );
  }

  @override
  String toString() =>
      'MyoroScrollableStyle(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  gradientTopColor: ${self.gradientTopColor},\n'
      '  gradientBottomColor: ${self.gradientBottomColor},\n'
      '  gradientLeftColor: ${self.gradientLeftColor},\n'
      '  gradientRightColor: ${self.gradientRightColor},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  padding: ${self.padding},\n'
      '  margin: ${self.margin},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  border: ${self.border},\n'
      '  boxShadow: ${self.boxShadow},\n'
      ');';
}
