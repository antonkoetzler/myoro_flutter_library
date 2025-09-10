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
    double? spacing,
    bool spacingProvided = true,
    IconData? searchButtonIcon,
    bool searchButtonIconProvided = true,
    double? searchButtonLoadingSize,
    bool searchButtonLoadingSizeProvided = true,
  }) {
    return MyoroSearchInputThemeExtension(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      searchButtonIcon: searchButtonIconProvided ? (searchButtonIcon ?? self.searchButtonIcon) : null,
      searchButtonLoadingSize: searchButtonLoadingSizeProvided
          ? (searchButtonLoadingSize ?? self.searchButtonLoadingSize)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.searchButtonIcon == self.searchButtonIcon &&
        other.searchButtonLoadingSize == self.searchButtonLoadingSize;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.searchButtonIcon, self.searchButtonLoadingSize);
  }

  @override
  String toString() =>
      'MyoroSearchInputThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  searchButtonIcon: ${self.searchButtonIcon},\n'
      '  searchButtonLoadingSize: ${self.searchButtonLoadingSize},\n'
      ');';
}
