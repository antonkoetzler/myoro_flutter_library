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
    MyoroIconConfiguration? searchButtonIconConfiguration,
    bool searchButtonIconConfigurationProvided = true,
    BoxConstraints? dropdownConstraints,
    bool dropdownConstraintsProvided = true,
  }) {
    return MyoroSearchInputStyle(
      searchButtonIconConfiguration: searchButtonIconConfigurationProvided
          ? (searchButtonIconConfiguration ?? self.searchButtonIconConfiguration)
          : null,
      dropdownConstraints: dropdownConstraintsProvided ? (dropdownConstraints ?? self.dropdownConstraints) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputStyle &&
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
      'MyoroSearchInputStyle(\n'
      '  searchButtonIconConfiguration: ${self.searchButtonIconConfiguration},\n'
      '  dropdownConstraints: ${self.dropdownConstraints},\n'
      ');';
}
