// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFeedbackStyle] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackStyle with _$MyoroFeedbackStyleMixin {}
/// ```
mixin _$MyoroFeedbackStyleMixin {
  MyoroFeedbackStyle get self => this as MyoroFeedbackStyle;

  MyoroFeedbackStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    MyoroIconStyle? iconStyle,
    bool iconStyleProvided = true,
    MyoroTextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    MyoroTextStyle? subtitleTextStyle,
    bool subtitleTextStyleProvided = true,
  }) {
    return MyoroFeedbackStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      iconStyle: iconStyleProvided ? (iconStyle ?? self.iconStyle) : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? self.titleTextStyle) : null,
      subtitleTextStyle: subtitleTextStyleProvided ? (subtitleTextStyle ?? self.subtitleTextStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.iconStyle == self.iconStyle &&
        other.titleTextStyle == self.titleTextStyle &&
        other.subtitleTextStyle == self.subtitleTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.iconStyle, self.titleTextStyle, self.subtitleTextStyle);
  }

  @override
  String toString() =>
      'MyoroFeedbackStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  iconStyle: ${self.iconStyle},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  subtitleTextStyle: ${self.subtitleTextStyle},\n'
      ');';
}
