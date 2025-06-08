// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_text_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroIconTextButtonTextConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonTextConfiguration with _$MyoroIconTextButtonTextConfigurationMixin {}
/// ```
mixin _$MyoroIconTextButtonTextConfigurationMixin {
  MyoroIconTextButtonTextConfiguration get self =>
      this as MyoroIconTextButtonTextConfiguration;

  MyoroIconTextButtonTextConfiguration copyWith({
    String? text,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? alignment,
    TextStyle? style,
    bool styleProvided = true,
  }) {
    return MyoroIconTextButtonTextConfiguration(
      text: text ?? self.text,
      maxLines: maxLines ?? self.maxLines,
      overflow: overflow ?? self.overflow,
      alignment: alignment ?? self.alignment,
      style: styleProvided ? (style ?? self.style) : null,
    );
  }

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
