// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_theme_extension.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroFeedbackThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackThemeExtension with _$MyoroFeedbackThemeExtensionMixin {}
/// ```
mixin _$MyoroFeedbackThemeExtensionMixin {
  MyoroFeedbackThemeExtension get self => this as MyoroFeedbackThemeExtension;

  MyoroFeedbackThemeExtension copyWith({
    double? iconSize,
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
  }) {
    return MyoroFeedbackThemeExtension(
      iconSize: iconSize ?? self.iconSize,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? self.subtitleTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackThemeExtension &&
        other.runtimeType == runtimeType &&
        other.iconSize == self.iconSize &&
        other.titleTextStyle == self.titleTextStyle &&
        other.subtitleTextStyle == self.subtitleTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.iconSize,
      self.titleTextStyle,
      self.subtitleTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroFeedbackThemeExtension(\n'
      '  iconSize: ${self.iconSize},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  subtitleTextStyle: ${self.subtitleTextStyle},\n'
      ');';
}
