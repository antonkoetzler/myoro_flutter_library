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
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.padding == self.padding &&
        other.titleCardSpacing == self.titleCardSpacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.constraints == self.constraints;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.border,
      self.borderRadius,
      self.padding,
      self.titleCardSpacing,
      self.titleTextStyle,
      self.constraints,
    );
  }

  @override
  String toString() =>
      'MyoroCardStyle(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  padding: ${self.padding},\n'
      '  titleCardSpacing: ${self.titleCardSpacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  constraints: ${self.constraints},\n'
      ');';
}
