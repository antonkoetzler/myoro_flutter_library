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
  MyoroDropdownThemeExtension copyWith({
    double? spacing,
    BoxBorder? menuBorder,
    BorderRadius? menuBorderRadius,
  }) {
    return MyoroDropdownThemeExtension(
      spacing: spacing ?? self.spacing,
      menuBorder: menuBorder ?? self.menuBorder,
      menuBorderRadius: menuBorderRadius ?? self.menuBorderRadius,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownThemeExtension &&
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
      'MyoroDropdownThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
