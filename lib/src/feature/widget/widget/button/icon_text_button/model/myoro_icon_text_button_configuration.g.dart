// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconTextButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {}
/// ```
mixin _$MyoroIconTextButtonConfigurationMixin {
  MyoroIconTextButtonConfiguration get self => this as MyoroIconTextButtonConfiguration;

  MyoroIconTextButtonConfiguration copyWith({
    bool? invert,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
    MouseCursor? cursor,
    bool cursorProvided = true,
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  }) {
    return MyoroIconTextButtonConfiguration(
      invert: invert ?? self.invert,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? self.iconConfiguration) : null,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? self.textConfiguration) : null,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipConfiguration: tooltipConfigurationProvided ? (tooltipConfiguration ?? self.tooltipConfiguration) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.invert == self.invert &&
        other.iconConfiguration == self.iconConfiguration &&
        other.textConfiguration == self.textConfiguration &&
        other.cursor == self.cursor &&
        other.tooltipConfiguration == self.tooltipConfiguration &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.invert,
      self.iconConfiguration,
      self.textConfiguration,
      self.cursor,
      self.tooltipConfiguration,
      self.onTapDown,
      self.onTapUp,
      self.isLoading,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonConfiguration(\n'
      '  invert: ${self.invert},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipConfiguration: ${self.tooltipConfiguration},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}
