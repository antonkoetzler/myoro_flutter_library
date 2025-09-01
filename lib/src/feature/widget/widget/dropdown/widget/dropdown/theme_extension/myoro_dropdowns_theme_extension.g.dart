// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dropdowns_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDropdownsThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDropdownsThemeExtension with _$MyoroDropdownsThemeExtensionMixin {}
/// ```
mixin _$MyoroDropdownsThemeExtensionMixin on ThemeExtension<MyoroDropdownsThemeExtension> {
  MyoroDropdownsThemeExtension get self => this as MyoroDropdownsThemeExtension;

  @override
  MyoroDropdownsThemeExtension copyWith({double? spacing, BoxBorder? menuBorder, BorderRadius? menuBorderRadius}) {
    return MyoroDropdownsThemeExtension(
      spacing: spacing ?? self.spacing,
      menuBorder: menuBorder ?? self.menuBorder,
      menuBorderRadius: menuBorderRadius ?? self.menuBorderRadius,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownsThemeExtension &&
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
      'MyoroDropdownsThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
