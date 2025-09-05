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
        other.cursor == self.cursor &&
        other.tooltipConfiguration == self.tooltipConfiguration &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp;
  }

  @override
  int get hashCode {
    return Object.hash(self.cursor, self.tooltipConfiguration, self.onTapDown, self.onTapUp);
  }

  @override
  String toString() =>
      'MyoroButtonConfiguration(\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipConfiguration: ${self.tooltipConfiguration},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}
