// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroIconTextButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {}
/// ```
mixin _$MyoroIconTextButtonConfigurationMixin {
  MyoroIconTextButtonConfiguration get self =>
      this as MyoroIconTextButtonConfiguration;

  MyoroIconTextButtonConfiguration copyWith({
    MyoroButtonConfiguration? buttonConfiguration,
    bool buttonConfigurationProvided = true,
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
  }) {
    return MyoroIconTextButtonConfiguration(
      buttonConfiguration:
          buttonConfigurationProvided
              ? (buttonConfiguration ?? self.buttonConfiguration)
              : null,
      invert: invert ?? self.invert,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      contentColorBuilder:
          contentColorBuilderProvided
              ? (contentColorBuilder ?? self.contentColorBuilder)
              : null,
      iconConfiguration:
          iconConfigurationProvided
              ? (iconConfiguration ?? self.iconConfiguration)
              : null,
      textConfiguration:
          textConfigurationProvided
              ? (textConfiguration ?? self.textConfiguration)
              : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonConfiguration &&
        other.runtimeType == runtimeType &&
        other.buttonConfiguration == self.buttonConfiguration &&
        other.invert == self.invert &&
        other.spacing == self.spacing &&
        other.padding == self.padding &&
        other.contentColorBuilder == self.contentColorBuilder &&
        other.iconConfiguration == self.iconConfiguration &&
        other.textConfiguration == self.textConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.buttonConfiguration,
      self.invert,
      self.spacing,
      self.padding,
      self.contentColorBuilder,
      self.iconConfiguration,
      self.textConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonConfiguration(\n'
      '  buttonConfiguration: ${self.buttonConfiguration},\n'
      '  invert: ${self.invert},\n'
      '  spacing: ${self.spacing},\n'
      '  padding: ${self.padding},\n'
      '  contentColorBuilder: ${self.contentColorBuilder},\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  textConfiguration: ${self.textConfiguration},\n'
      ');';
}
