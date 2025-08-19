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
        other.invert == self.invert &&
        other.spacing == self.spacing &&
        other.padding == self.padding &&
        other.contentColorBuilder == self.contentColorBuilder &&
        other.iconConfiguration == self.iconConfiguration &&
        other.textConfiguration == self.textConfiguration &&
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
      self.invert,
      self.spacing,
      self.padding,
      self.contentColorBuilder,
      self.iconConfiguration,
      self.textConfiguration,
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
      'MyoroIconTextButtonConfiguration(\n'
      '  invert: ${self.invert},\n'
      '  spacing: ${self.spacing},\n'
      '  padding: ${self.padding},\n'
      '  contentColorBuilder: ${self.contentColorBuilder},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      '  tooltipConfiguration: ${self.tooltipConfiguration},\n'
      '  cursor: ${self.cursor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  backgroundColorBuilder: ${self.backgroundColorBuilder},\n'
      '  borderBuilder: ${self.borderBuilder},\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      ');';
}
