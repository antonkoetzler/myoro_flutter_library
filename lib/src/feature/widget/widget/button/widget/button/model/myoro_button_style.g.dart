// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonStyle] once the code is generated.
///
/// ```dart
/// class MyoroButtonStyle with _$MyoroButtonStyleMixin {}
/// ```
mixin _$MyoroButtonStyleMixin {
  MyoroButtonStyle get self => this as MyoroButtonStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonStyle &&
        other.runtimeType == runtimeType &&
        other.cursor == self.cursor &&
        other.borderRadius == self.borderRadius &&
        other.backgroundColorBuilder == self.backgroundColorBuilder &&
        other.borderBuilder == self.borderBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(self.cursor, self.borderRadius, self.backgroundColorBuilder, self.borderBuilder);
  }

  @override
  String toString() =>
      'MyoroButtonStyle(\n'
      '  cursor: ${self.cursor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  backgroundColorBuilder: ${self.backgroundColorBuilder},\n'
      '  borderBuilder: ${self.borderBuilder},\n'
      ');';
}
