// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dropdown_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroDropdownThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDropdownThemeExtension with _$MyoroDropdownThemeExtensionMixin {}
/// ```
mixin _$MyoroDropdownThemeExtensionMixin
    on ThemeExtension<MyoroDropdownThemeExtension> {
  MyoroDropdownThemeExtension get self => this as MyoroDropdownThemeExtension;

  @override
  MyoroDropdownThemeExtension copyWith({double? spacing}) {
    return MyoroDropdownThemeExtension(spacing: spacing ?? self.spacing);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'MyoroDropdownThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
