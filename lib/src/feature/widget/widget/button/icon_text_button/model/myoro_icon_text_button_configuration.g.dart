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
    double? spacing,
    bool spacingProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    Color Function(MyoroTapStatusEnum)? contentColorBuilder,
    bool contentColorBuilderProvided = true,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
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
    return MyoroIconTextButtonConfiguration(
      invert: invert ?? self.invert,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      contentColorBuilder: contentColorBuilderProvided ? (contentColorBuilder ?? self.contentColorBuilder) : null,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? self.iconConfiguration) : null,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? self.textConfiguration) : null,
      tooltipConfiguration: tooltipConfigurationProvided ? (tooltipConfiguration ?? self.tooltipConfiguration) : null,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      backgroundColorBuilder: backgroundColorBuilderProvided
          ? (backgroundColorBuilder ?? self.backgroundColorBuilder)
          : null,
      borderBuilder: borderBuilderProvided ? (borderBuilder ?? self.borderBuilder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
    );
  }

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
