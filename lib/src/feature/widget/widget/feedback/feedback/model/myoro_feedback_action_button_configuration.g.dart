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
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
  }) {
    return MyoroFeedbackActionButtonConfiguration(
      style: style ?? self.style,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipText: tooltipText ?? self.tooltipText,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
      invert: invert ?? self.invert,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? self.iconConfiguration) : null,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? self.textConfiguration) : null,
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
        other.iconConfiguration == self.iconConfiguration &&
        other.textConfiguration == self.textConfiguration;
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
      self.iconConfiguration,
      self.textConfiguration,
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
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      ');';
}
