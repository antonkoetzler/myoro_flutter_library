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

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.inverted == self.inverted &&
        other.iconConfiguration == self.iconConfiguration &&
        other.textConfiguration == self.textConfiguration &&
        other.cursor == self.cursor &&
        other.tooltipConfiguration == self.tooltipConfiguration &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.inverted,
      self.iconConfiguration,
      self.textConfiguration,
      self.cursor,
      self.tooltipConfiguration,
      self.onTapDown,
      self.onTapUp,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonConfiguration(\n'
      '  inverted: ${self.inverted},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      '  cursor: ${self.cursor},\n'
      '  tooltipConfiguration: ${self.tooltipConfiguration},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}
