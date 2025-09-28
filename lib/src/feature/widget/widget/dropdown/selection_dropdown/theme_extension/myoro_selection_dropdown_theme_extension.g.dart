// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_selection_dropdown_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSelectionDropdownThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSelectionDropdownThemeExtension with _$MyoroSelectionDropdownThemeExtensionMixin {}
/// ```
mixin _$MyoroSelectionDropdownThemeExtensionMixin on ThemeExtension<MyoroSelectionDropdownThemeExtension> {
  MyoroSelectionDropdownThemeExtension get self => this as MyoroSelectionDropdownThemeExtension;

  @override
  MyoroSelectionDropdownThemeExtension copyWith({
    double? spacing,
    bool spacingProvided = true,
    BoxBorder? menuBorder,
    bool menuBorderProvided = true,
    BorderRadius? menuBorderRadius,
    bool menuBorderRadiusProvided = true,
  }) {
    return MyoroSelectionDropdownThemeExtension(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      menuBorder: menuBorderProvided ? (menuBorder ?? self.menuBorder) : null,
      menuBorderRadius: menuBorderRadiusProvided ? (menuBorderRadius ?? self.menuBorderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSelectionDropdownThemeExtension &&
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
      'MyoroSelectionDropdownThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
