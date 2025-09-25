// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputStyle] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputStyle with _$MyoroSearchInputStyleMixin {}
/// ```
mixin _$MyoroSearchInputStyleMixin {
  MyoroSearchInputStyle get self => this as MyoroSearchInputStyle;

  MyoroSearchInputStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    IconData? searchButtonIcon,
    bool searchButtonIconProvided = true,
    double? searchButtonLoadingSize,
    bool searchButtonLoadingSizeProvided = true,
  }) {
    return MyoroSearchInputStyle(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      searchButtonIcon: searchButtonIconProvided ? (searchButtonIcon ?? self.searchButtonIcon) : null,
      searchButtonLoadingSize: searchButtonLoadingSizeProvided
          ? (searchButtonLoadingSize ?? self.searchButtonLoadingSize)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputStyle &&
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
      'MyoroSearchInputStyle(\n'
      '  spacing: ${self.spacing},\n'
      '  searchButtonIcon: ${self.searchButtonIcon},\n'
      '  searchButtonLoadingSize: ${self.searchButtonLoadingSize},\n'
      ');';
}
