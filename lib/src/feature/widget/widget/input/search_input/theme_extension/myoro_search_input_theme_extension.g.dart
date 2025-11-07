// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputThemeExtension with _$MyoroSearchInputThemeExtensionMixin {}
/// ```
mixin _$MyoroSearchInputThemeExtensionMixin on ThemeExtension<MyoroSearchInputThemeExtension> {
  MyoroSearchInputThemeExtension get self => this as MyoroSearchInputThemeExtension;

  @override
  MyoroSearchInputThemeExtension copyWith({
    MyoroIconConfiguration? searchButtonIconConfiguration,
    bool searchButtonIconConfigurationProvided = true,
    BoxConstraints? dropdownConstraints,
    bool dropdownConstraintsProvided = true,
  }) {
    return MyoroSearchInputThemeExtension(
      searchButtonIconConfiguration: searchButtonIconConfigurationProvided
          ? (searchButtonIconConfiguration ?? self.searchButtonIconConfiguration)
          : null,
      dropdownConstraints: dropdownConstraintsProvided ? (dropdownConstraints ?? self.dropdownConstraints) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.searchButtonIconConfiguration == self.searchButtonIconConfiguration &&
        other.dropdownConstraints == self.dropdownConstraints;
  }

  @override
  int get hashCode {
    return Object.hash(self.searchButtonIconConfiguration, self.dropdownConstraints);
  }

  @override
  String toString() =>
      'MyoroSearchInputThemeExtension(\n'
      '  searchButtonIconConfiguration: ${self.searchButtonIconConfiguration},\n'
      '  dropdownConstraints: ${self.dropdownConstraints},\n'
      ');';
}
