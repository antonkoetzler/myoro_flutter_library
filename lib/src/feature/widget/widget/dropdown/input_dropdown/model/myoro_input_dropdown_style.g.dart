// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_dropdown_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroInputDropdownStyle] once the code is generated.
///
/// ```dart
/// class MyoroInputDropdownStyle with _$MyoroInputDropdownStyleMixin {}
/// ```
mixin _$MyoroInputDropdownStyleMixin {
  MyoroInputDropdownStyle get self => this as MyoroInputDropdownStyle;

  MyoroInputDropdownStyle copyWith({
    BoxBorder? menuBorder,
    bool menuBorderProvided = true,
    BorderRadius? menuBorderRadius,
    bool menuBorderRadiusProvided = true,
  }) {
    return MyoroInputDropdownStyle(
      menuBorder: menuBorderProvided ? (menuBorder ?? self.menuBorder) : null,
      menuBorderRadius: menuBorderRadiusProvided ? (menuBorderRadius ?? self.menuBorderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputDropdownStyle &&
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
      'MyoroInputDropdownStyle(\n'
      '  menuBorder: ${self.menuBorder},\n'
      '  menuBorderRadius: ${self.menuBorderRadius},\n'
      ');';
}
