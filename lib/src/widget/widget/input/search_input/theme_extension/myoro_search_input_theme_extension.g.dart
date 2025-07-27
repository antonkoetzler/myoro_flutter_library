// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

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
    IconData? searchButtonIcon,
    double? searchButtonLoadingSize,
  }) {
    return MyoroSearchInputThemeExtension(
      spacing: spacing ?? self.spacing,
      searchButtonIcon: searchButtonIcon ?? self.searchButtonIcon,
      searchButtonLoadingSize: searchButtonLoadingSize ?? self.searchButtonLoadingSize,
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
