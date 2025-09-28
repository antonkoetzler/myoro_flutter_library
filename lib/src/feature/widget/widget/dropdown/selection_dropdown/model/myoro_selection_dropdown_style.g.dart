// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_selection_dropdown_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSelectionDropdownStyle] once the code is generated.
///
/// ```dart
/// class MyoroSelectionDropdownStyle with _$MyoroSelectionDropdownStyleMixin {}
/// ```
mixin _$MyoroSelectionDropdownStyleMixin {
  MyoroSelectionDropdownStyle get self => this as MyoroSelectionDropdownStyle;

  MyoroSelectionDropdownStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    BoxBorder? menuBorder,
    bool menuBorderProvided = true,
    BorderRadius? menuBorderRadius,
    bool menuBorderRadiusProvided = true,
  }) {
    return MyoroSelectionDropdownStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      menuBorder: menuBorderProvided ? (menuBorder ?? self.menuBorder) : null,
      menuBorderRadius: menuBorderRadiusProvided ? (menuBorderRadius ?? self.menuBorderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSelectionDropdownStyle &&
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
      'MyoroSelectionDropdownStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
