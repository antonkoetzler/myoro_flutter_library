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
    double? iconSize,
    bool iconSizeProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    TextStyle? subtitleTextStyle,
    bool subtitleTextStyleProvided = true,
  }) {
    return MyoroFeedbackStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      iconSize: iconSizeProvided ? (iconSize ?? self.iconSize) : null,
      titleTextStyle: titleTextStyleProvided
          ? (titleTextStyle ?? self.titleTextStyle)
          : null,
      subtitleTextStyle: subtitleTextStyleProvided
          ? (subtitleTextStyle ?? self.subtitleTextStyle)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.iconSize == self.iconSize &&
        other.titleTextStyle == self.titleTextStyle &&
        other.subtitleTextStyle == self.subtitleTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.spacing,
      self.iconSize,
      self.titleTextStyle,
      self.subtitleTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroFeedbackStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  iconSize: ${self.iconSize},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  subtitleTextStyle: ${self.subtitleTextStyle},\n'
      ');';
}
