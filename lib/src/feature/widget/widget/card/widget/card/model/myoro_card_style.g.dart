// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_card_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCardStyle] once the code is generated.
///
/// ```dart
/// class MyoroCardStyle with _$MyoroCardStyleMixin {}
/// ```
mixin _$MyoroCardStyleMixin {
  MyoroCardStyle get self => this as MyoroCardStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroCardStyle &&
        other.runtimeType == runtimeType &&
        other.titleTextStyle == self.titleTextStyle &&
        other.padding == self.padding &&
        other.constraints == self.constraints &&
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.titleTextStyle,
      self.padding,
      self.constraints,
      self.backgroundColor,
      self.border,
      self.borderRadius,
    );
  }

  @override
  String toString() =>
      'MyoroCardStyle(\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  padding: ${self.padding},\n'
      '  constraints: ${self.constraints},\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      ');';
}
