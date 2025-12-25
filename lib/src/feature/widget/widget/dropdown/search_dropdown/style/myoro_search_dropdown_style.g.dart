// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_dropdown_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchDropdownStyle] once the code is generated.
///
/// ```dart
/// class MyoroSearchDropdownStyle with _$MyoroSearchDropdownStyleMixin {}
/// ```
mixin _$MyoroSearchDropdownStyleMixin {
  MyoroSearchDropdownStyle get self => this as MyoroSearchDropdownStyle;

  MyoroSearchDropdownStyle copyWith({
    double? searchButtonIconSize,
    bool searchButtonIconSizeProvided = true,
    BoxConstraints? dropdownConstraints,
    bool dropdownConstraintsProvided = true,
    IconData? searchButtonIcon,
    bool searchButtonIconProvided = true,
  }) {
    return MyoroSearchDropdownStyle(
      searchButtonIconSize: searchButtonIconSizeProvided ? (searchButtonIconSize ?? self.searchButtonIconSize) : null,
      dropdownConstraints: dropdownConstraintsProvided ? (dropdownConstraints ?? self.dropdownConstraints) : null,
      searchButtonIcon: searchButtonIconProvided ? (searchButtonIcon ?? self.searchButtonIcon) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchDropdownStyle &&
        other.runtimeType == runtimeType &&
        other.searchButtonIconSize == self.searchButtonIconSize &&
        other.dropdownConstraints == self.dropdownConstraints &&
        other.searchButtonIcon == self.searchButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(self.searchButtonIconSize, self.dropdownConstraints, self.searchButtonIcon);
  }

  @override
  String toString() =>
      'MyoroSearchDropdownStyle(\n'
      '  searchButtonIconSize: ${self.searchButtonIconSize},\n'
      '  dropdownConstraints: ${self.dropdownConstraints},\n'
      '  searchButtonIcon: ${self.searchButtonIcon},\n'
      ');';
}
