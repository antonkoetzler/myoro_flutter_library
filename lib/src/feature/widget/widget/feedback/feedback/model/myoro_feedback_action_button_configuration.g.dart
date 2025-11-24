// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_action_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFeedbackActionButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackActionButtonConfiguration with _$MyoroFeedbackActionButtonConfigurationMixin {}
/// ```
mixin _$MyoroFeedbackActionButtonConfigurationMixin {
  MyoroFeedbackActionButtonConfiguration get self => this as MyoroFeedbackActionButtonConfiguration;

  MyoroFeedbackActionButtonConfiguration copyWith({
    MyoroIconTextButtonStyle? style,
    MouseCursor? cursor,
    bool cursorProvided = true,
    String? tooltipText,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
    bool? invert,
    IconData? icon,
    bool iconProvided = true,
    String? text,
    bool textProvided = true,
  }) {
    return MyoroFeedbackActionButtonConfiguration(
      style: style ?? self.style,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipText: tooltipText ?? self.tooltipText,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
      invert: invert ?? self.invert,
      icon: iconProvided ? (icon ?? self.icon) : null,
      text: textProvided ? (text ?? self.text) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackActionButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.style == self.style &&
        other.cursor == self.cursor &&
        other.tooltipText == self.tooltipText &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading &&
        other.invert == self.invert &&
        other.icon == self.icon &&
        other.text == self.text;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.style,
      self.cursor,
      self.tooltipText,
      self.onTapDown,
      self.onTapUp,
      self.isLoading,
      self.invert,
      self.icon,
      self.text,
    );
  }

  @override
  String toString() =>
      'MyoroFeedbackActionButtonConfiguration(\n'
      '  style: ${self.style},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipText: ${self.tooltipText},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      '  invert: ${self.invert},\n'
      '  icon: ${self.icon},\n'
      '  text: ${self.text},\n'
      ');';
}
