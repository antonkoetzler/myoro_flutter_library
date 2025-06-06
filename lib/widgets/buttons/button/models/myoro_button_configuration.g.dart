// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroButtonConfigurationExtension on MyoroButtonConfiguration {
  MyoroButtonConfiguration copyWith({
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MouseCursor? cursor,
    bool cursorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Color Function(MyoroTapStatusEnum)? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
    BoxBorder Function(MyoroTapStatusEnum)? borderBuilder,
    bool borderBuilderProvided = true,
    void Function(TapDownDetails)? onTapDown,
    bool onTapDownProvided = true,
    void Function(TapUpDetails)? onTapUp,
    bool onTapUpProvided = true,
  }) {
    return MyoroButtonConfiguration(
      tooltipConfiguration:
          tooltipConfigurationProvided
              ? (tooltipConfiguration ?? this.tooltipConfiguration)
              : null,
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius:
          borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilder:
          backgroundColorBuilderProvided
              ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
              : null,
      borderBuilder:
          borderBuilderProvided ? (borderBuilder ?? this.borderBuilder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
    );
  }
}

/// Apply this mixin to [MyoroButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroButtonConfiguration with $MyoroButtonConfigurationMixin {}
/// ```
mixin $MyoroButtonConfigurationMixin {
  MyoroButtonConfiguration get self => this as MyoroButtonConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.tooltipConfiguration == self.tooltipConfiguration &&
        other.cursor == self.cursor &&
        other.borderRadius == self.borderRadius &&
        other.backgroundColorBuilder == self.backgroundColorBuilder &&
        other.borderBuilder == self.borderBuilder &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.tooltipConfiguration,
      self.cursor,
      self.borderRadius,
      self.backgroundColorBuilder,
      self.borderBuilder,
      self.onTapDown,
      self.onTapUp,
    );
  }

  @override
  String toString() =>
      'MyoroButtonConfiguration(\n'
      '  tooltipConfiguration: ${self.tooltipConfiguration},\n'
      '  cursor: ${self.cursor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  backgroundColorBuilder: ${self.backgroundColorBuilder},\n'
      '  borderBuilder: ${self.borderBuilder},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}
