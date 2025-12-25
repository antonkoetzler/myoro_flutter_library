// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_list_scrollable_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroListScrollableStyle] once the code is generated.
///
/// ```dart
/// class MyoroListScrollableStyle with _$MyoroListScrollableStyleMixin {}
/// ```
mixin _$MyoroListScrollableStyleMixin {
  MyoroListScrollableStyle get self => this as MyoroListScrollableStyle;

  MyoroListScrollableStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    MyoroFeedbackStyle? emptyFeedbackStyle,
    bool emptyFeedbackStyleProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? gradientSize,
    bool gradientSizeProvided = true,
    Color? gradientColor,
    bool gradientColorProvided = true,
  }) {
    return MyoroListScrollableStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      emptyFeedbackStyle: emptyFeedbackStyleProvided ? (emptyFeedbackStyle ?? self.emptyFeedbackStyle) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      gradientColor: gradientColorProvided ? (gradientColor ?? self.gradientColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroListScrollableStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.emptyFeedbackStyle == self.emptyFeedbackStyle &&
        other.padding == self.padding &&
        other.gradientSize == self.gradientSize &&
        other.gradientColor == self.gradientColor;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.emptyFeedbackStyle, self.padding, self.gradientSize, self.gradientColor);
  }

  @override
  String toString() =>
      'MyoroListScrollableStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  emptyFeedbackStyle: ${self.emptyFeedbackStyle},\n'
      '  padding: ${self.padding},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  gradientColor: ${self.gradientColor},\n'
      ');';
}
