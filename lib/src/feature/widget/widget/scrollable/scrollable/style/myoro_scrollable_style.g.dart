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
    BoxDecoration? gradientDecoration,
    bool gradientDecorationProvided = true,
  }) {
    return MyoroScrollableStyle(
      padding: paddingProvided ? (padding ?? self.padding) : null,
      gradientDecoration: gradientDecorationProvided ? (gradientDecoration ?? self.gradientDecoration) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableStyle &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.gradientDecoration == self.gradientDecoration;
  }

  @override
  int get hashCode {
    return Object.hash(self.padding, self.gradientDecoration);
  }

  @override
  String toString() =>
      'MyoroScrollableStyle(\n'
      '  padding: ${self.padding},\n'
      '  gradientDecoration: ${self.gradientDecoration},\n'
      ');';
}
