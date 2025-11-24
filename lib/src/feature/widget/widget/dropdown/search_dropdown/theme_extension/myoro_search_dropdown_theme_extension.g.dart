// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_dropdown_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchDropdownThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSearchDropdownThemeExtension with _$MyoroSearchDropdownThemeExtensionMixin {}
/// ```
mixin _$MyoroSearchDropdownThemeExtensionMixin on ThemeExtension<MyoroSearchDropdownThemeExtension> {
  MyoroSearchDropdownThemeExtension get self => this as MyoroSearchDropdownThemeExtension;

  @override
  MyoroSearchDropdownThemeExtension copyWith({
    double? searchButtonIconSize,
    bool searchButtonIconSizeProvided = true,
    BoxConstraints? dropdownConstraints,
    bool dropdownConstraintsProvided = true,
    IconData? searchButtonIcon,
    bool searchButtonIconProvided = true,
  }) {
    return MyoroSearchDropdownThemeExtension(
      searchButtonIconSize: searchButtonIconSizeProvided ? (searchButtonIconSize ?? self.searchButtonIconSize) : null,
      dropdownConstraints: dropdownConstraintsProvided ? (dropdownConstraints ?? self.dropdownConstraints) : null,
      searchButtonIcon: searchButtonIconProvided ? (searchButtonIcon ?? self.searchButtonIcon) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchDropdownThemeExtension &&
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
      'MyoroSearchDropdownThemeExtension(\n'
      '  searchButtonIconSize: ${self.searchButtonIconSize},\n'
      '  dropdownConstraints: ${self.dropdownConstraints},\n'
      '  searchButtonIcon: ${self.searchButtonIcon},\n'
      ');';
}
