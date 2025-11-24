// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_filter_panel_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilterPanelThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFilterPanelThemeExtension with _$MyoroFilterPanelThemeExtensionMixin {}
/// ```
mixin _$MyoroFilterPanelThemeExtensionMixin on ThemeExtension<MyoroFilterPanelThemeExtension> {
  MyoroFilterPanelThemeExtension get self => this as MyoroFilterPanelThemeExtension;

  @override
  MyoroFilterPanelThemeExtension copyWith({
    double? searchBarFiltersSpacing,
    bool searchBarFiltersSpacingProvided = true,
    double? filtersSpacing,
    bool filtersSpacingProvided = true,
  }) {
    return MyoroFilterPanelThemeExtension(
      searchBarFiltersSpacing: searchBarFiltersSpacingProvided
          ? (searchBarFiltersSpacing ?? self.searchBarFiltersSpacing)
          : null,
      filtersSpacing: filtersSpacingProvided ? (filtersSpacing ?? self.filtersSpacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilterPanelThemeExtension &&
        other.runtimeType == runtimeType &&
        other.searchBarFiltersSpacing == self.searchBarFiltersSpacing &&
        other.filtersSpacing == self.filtersSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.searchBarFiltersSpacing, self.filtersSpacing);
  }

  @override
  String toString() =>
      'MyoroFilterPanelThemeExtension(\n'
      '  searchBarFiltersSpacing: ${self.searchBarFiltersSpacing},\n'
      '  filtersSpacing: ${self.filtersSpacing},\n'
      ');';
}
