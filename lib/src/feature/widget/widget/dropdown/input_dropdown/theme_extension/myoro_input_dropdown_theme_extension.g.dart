// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_dropdown_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroInputDropdownThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroInputDropdownThemeExtension with _$MyoroInputDropdownThemeExtensionMixin {}
/// ```
mixin _$MyoroInputDropdownThemeExtensionMixin on ThemeExtension<MyoroInputDropdownThemeExtension> {
  MyoroInputDropdownThemeExtension get self => this as MyoroInputDropdownThemeExtension;

  @override
  MyoroInputDropdownThemeExtension copyWith({
    BoxBorder? menuBorder,
    bool menuBorderProvided = true,
    BorderRadius? menuBorderRadius,
    bool menuBorderRadiusProvided = true,
  }) {
    return MyoroInputDropdownThemeExtension(
      menuBorder: menuBorderProvided ? (menuBorder ?? self.menuBorder) : null,
      menuBorderRadius: menuBorderRadiusProvided ? (menuBorderRadius ?? self.menuBorderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputDropdownThemeExtension &&
        other.runtimeType == runtimeType &&
        other.menuBorder == self.menuBorder &&
        other.menuBorderRadius == self.menuBorderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(self.menuBorder, self.menuBorderRadius);
  }

  @override
  String toString() =>
      'MyoroInputDropdownThemeExtension(\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
