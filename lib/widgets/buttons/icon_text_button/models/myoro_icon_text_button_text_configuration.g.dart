// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_text_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroIconTextButtonTextConfigurationExtension
    on MyoroIconTextButtonTextConfiguration {
  MyoroIconTextButtonTextConfiguration copyWith({
    String? text,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? alignment,
    TextStyle? style,
    bool styleProvided = true,
  }) {
    return MyoroIconTextButtonTextConfiguration(
      text: text ?? this.text,
      maxLines: maxLines ?? this.maxLines,
      overflow: overflow ?? this.overflow,
      alignment: alignment ?? this.alignment,
      style: styleProvided ? (style ?? this.style) : null,
    );
  }
}

/// Apply this mixin to [MyoroIconTextButtonTextConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonTextConfiguration with $MyoroIconTextButtonTextConfigurationMixin {}
/// ```
mixin $MyoroIconTextButtonTextConfigurationMixin {
  MyoroIconTextButtonTextConfiguration get self =>
      this as MyoroIconTextButtonTextConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonTextConfiguration &&
        other.runtimeType == runtimeType &&
        other.text == self.text &&
        other.maxLines == self.maxLines &&
        other.overflow == self.overflow &&
        other.alignment == self.alignment &&
        other.style == self.style;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.text,
      self.maxLines,
      self.overflow,
      self.alignment,
      self.style,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonTextConfiguration(\n'
      '  text: ${self.text},\n'
      '  maxLines: ${self.maxLines},\n'
      '  overflow: ${self.overflow},\n'
      '  alignment: ${self.alignment},\n'
      '  style: ${self.style},\n'
      ');';
}
