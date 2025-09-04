// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconTextButtonStyle] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonStyle with _$MyoroIconTextButtonStyleMixin {}
/// ```
mixin _$MyoroIconTextButtonStyleMixin {
  MyoroIconTextButtonStyle get self => this as MyoroIconTextButtonStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonStyle &&
        other.runtimeType == runtimeType &&
        other.invert == self.invert &&
        other.spacing == self.spacing &&
        other.padding == self.padding &&
        other.contentColorBuilder == self.contentColorBuilder &&
        other.cursor == self.cursor &&
        other.borderRadius == self.borderRadius &&
        other.backgroundColorBuilder == self.backgroundColorBuilder &&
        other.borderBuilder == self.borderBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.invert,
      self.spacing,
      self.padding,
      self.contentColorBuilder,
      self.cursor,
      self.borderRadius,
      self.backgroundColorBuilder,
      self.borderBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonStyle(\n'
      '  invert: ${self.invert},\n'
      '  spacing: ${self.spacing},\n'
      '  padding: ${self.padding},\n'
      '  contentColorBuilder: ${self.contentColorBuilder},\n'
      '  cursor: ${self.cursor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  backgroundColorBuilder: ${self.backgroundColorBuilder},\n'
      '  borderBuilder: ${self.borderBuilder},\n'
      ');';
}
