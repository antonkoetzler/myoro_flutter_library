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

  MyoroTextConfiguration copyWith({
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? alignment,
    TextStyle? style,
    bool styleProvided = true,
  }) {
    return MyoroTextConfiguration(
      maxLines: maxLines ?? self.maxLines,
      overflow: overflow ?? self.overflow,
      alignment: alignment ?? self.alignment,
      style: styleProvided ? (style ?? self.style) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTextConfiguration &&
        other.runtimeType == runtimeType &&
        other.maxLines == self.maxLines &&
        other.overflow == self.overflow &&
        other.alignment == self.alignment &&
        other.style == self.style;
  }

  @override
  int get hashCode {
    return Object.hash(self.maxLines, self.overflow, self.alignment, self.style);
  }

  @override
  String toString() =>
      'MyoroTextConfiguration(\n'
      '  maxLines: ${self.maxLines},\n'
      '  overflow: ${self.overflow},\n'
      '  alignment: ${self.alignment},\n'
      '  style: ${self.style},\n'
      ');';
}
