// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dropdown_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDropdownStyle] once the code is generated.
///
/// ```dart
/// class MyoroDropdownStyle with _$MyoroDropdownStyleMixin {}
/// ```
mixin _$MyoroDropdownStyleMixin {
  MyoroDropdownStyle get self => this as MyoroDropdownStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.menuBorder == self.menuBorder &&
        other.menuBorderRadius == self.menuBorderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.menuBorder, self.menuBorderRadius);
  }

  @override
  String toString() =>
      'MyoroDropdownStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
