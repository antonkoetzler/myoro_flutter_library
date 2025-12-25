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
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? gradientSize,
    bool gradientSizeProvided = true,
    Color? gradientColor,
    bool gradientColorProvided = true,
  }) {
    return MyoroScrollableStyle(
      padding: paddingProvided ? (padding ?? self.padding) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      gradientColor: gradientColorProvided ? (gradientColor ?? self.gradientColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableStyle &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.gradientSize == self.gradientSize &&
        other.gradientColor == self.gradientColor;
  }

  @override
  int get hashCode {
    return Object.hash(self.padding, self.gradientSize, self.gradientColor);
  }

  @override
  String toString() =>
      'MyoroScrollableStyle(\n'
      '  padding: ${self.padding},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  gradientColor: ${self.gradientColor},\n'
      ');';
}
