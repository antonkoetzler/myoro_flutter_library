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

  MyoroDropdownStyle copyWith({double? spacing, bool spacingProvided = true}) {
    return MyoroDropdownStyle(spacing: spacingProvided ? (spacing ?? self.spacing) : null);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownStyle && other.runtimeType == runtimeType && other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'MyoroDropdownStyle(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
