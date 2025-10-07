// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroButtonConfiguration with _$MyoroButtonConfigurationMixin {}
/// ```
mixin _$MyoroButtonConfigurationMixin {
  MyoroButtonConfiguration get self => this as MyoroButtonConfiguration;

  MyoroButtonConfiguration copyWith({
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
    return MyoroButtonConfiguration(
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      tooltipConfiguration: tooltipConfigurationProvided ? (tooltipConfiguration ?? self.tooltipConfiguration) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      isLoading: isLoading ?? self.isLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.cursor == self.cursor &&
        other.tooltipConfiguration == self.tooltipConfiguration &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.isLoading == self.isLoading;
  }

  @override
  int get hashCode {
    return Object.hash(self.cursor, self.tooltipConfiguration, self.onTapDown, self.onTapUp, self.isLoading);
  }

  @override
  String toString() =>
      'MyoroButtonConfiguration(\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipConfiguration: ${self.tooltipConfiguration},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  isLoading: ${self.isLoading},\n'
      ');';
}
