// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_filter_panel_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilterPanelStyle] once the code is generated.
///
/// ```dart
/// class MyoroFilterPanelStyle with _$MyoroFilterPanelStyleMixin {}
/// ```
mixin _$MyoroFilterPanelStyleMixin {
  MyoroFilterPanelStyle get self => this as MyoroFilterPanelStyle;

  MyoroFilterPanelStyle copyWith({
    double? searchBarFiltersSpacing,
    bool searchBarFiltersSpacingProvided = true,
    double? filtersSpacing,
    bool filtersSpacingProvided = true,
  }) {
    return MyoroFilterPanelStyle(
      searchBarFiltersSpacing: searchBarFiltersSpacingProvided
          ? (searchBarFiltersSpacing ?? self.searchBarFiltersSpacing)
          : null,
      filtersSpacing: filtersSpacingProvided ? (filtersSpacing ?? self.filtersSpacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilterPanelStyle &&
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
      'MyoroFilterPanelStyle(\n'
      '  searchBarFiltersSpacing: ${self.searchBarFiltersSpacing},\n'
      '  filtersSpacing: ${self.filtersSpacing},\n'
      ');';
}
