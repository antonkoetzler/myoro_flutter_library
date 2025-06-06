// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroIconTextButtonConfigurationExtension
    on MyoroIconTextButtonConfiguration {
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
    MyoroIconTextButtonIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroIconTextButtonTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
  }) {
    return MyoroIconTextButtonConfiguration(
      buttonConfiguration:
          buttonConfigurationProvided
              ? (buttonConfiguration ?? this.buttonConfiguration)
              : null,
      invert: invert ?? this.invert,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      contentColorBuilder:
          contentColorBuilderProvided
              ? (contentColorBuilder ?? this.contentColorBuilder)
              : null,
      iconConfiguration:
          iconConfigurationProvided
              ? (iconConfiguration ?? this.iconConfiguration)
              : null,
      textConfiguration:
          textConfigurationProvided
              ? (textConfiguration ?? this.textConfiguration)
              : null,
    );
  }
}

/// Apply this mixin to [MyoroIconTextButtonConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonConfiguration with $MyoroIconTextButtonConfigurationMixin {}
/// ```
mixin $MyoroIconTextButtonConfigurationMixin {
  MyoroIconTextButtonConfiguration get self =>
      this as MyoroIconTextButtonConfiguration;

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
