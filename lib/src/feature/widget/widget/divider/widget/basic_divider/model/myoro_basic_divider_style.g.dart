// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_basic_divider_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroBasicDividerStyle] once the code is generated.
///
/// ```dart
/// class MyoroBasicDividerStyle with _$MyoroBasicDividerStyleMixin {}
/// ```
mixin _$MyoroBasicDividerStyleMixin {
  MyoroBasicDividerStyle get self => this as MyoroBasicDividerStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroBasicDividerStyle &&
        other.runtimeType == runtimeType &&
        other.color == self.color &&
        other.shortValue == self.shortValue &&
        other.longValue == self.longValue;
  }

  @override
  int get hashCode {
    return Object.hash(self.color, self.shortValue, self.longValue);
  }

  @override
  String toString() =>
      'MyoroBasicDividerStyle(\n'
      '  color: ${self.color},\n'
      '  shortValue: ${self.shortValue},\n'
      '  longValue: ${self.longValue},\n'
      ');';
}
