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
