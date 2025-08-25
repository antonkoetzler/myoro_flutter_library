// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_text_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTextConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTextConfiguration with _$MyoroTextConfigurationMixin {}
/// ```
mixin _$MyoroTextConfigurationMixin {
  MyoroTextConfiguration get self => this as MyoroTextConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroTextConfiguration &&
        other.runtimeType == runtimeType &&
        other.text == self.text &&
        other.maxLines == self.maxLines &&
        other.overflow == self.overflow &&
        other.alignment == self.alignment &&
        other.style == self.style;
  }

  @override
  int get hashCode {
    return Object.hash(self.text, self.maxLines, self.overflow, self.alignment, self.style);
  }

  @override
  String toString() =>
      'MyoroTextConfiguration(\n'
      '  text: ${self.text},\n'
      '  maxLines: ${self.maxLines},\n'
      '  overflow: ${self.overflow},\n'
      '  alignment: ${self.alignment},\n'
      '  style: ${self.style},\n'
      ');';
}
