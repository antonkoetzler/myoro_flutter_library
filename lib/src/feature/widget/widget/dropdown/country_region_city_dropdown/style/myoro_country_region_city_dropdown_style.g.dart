// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_country_region_city_dropdown_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCountryRegionCityDropdownStyle] once the code is generated.
///
/// ```dart
/// class MyoroCountryRegionCityDropdownStyle with _$MyoroCountryRegionCityDropdownStyleMixin {}
/// ```
mixin _$MyoroCountryRegionCityDropdownStyleMixin {
  MyoroCountryRegionCityDropdownStyle get self => this as MyoroCountryRegionCityDropdownStyle;

  MyoroCountryRegionCityDropdownStyle copyWith({double? spacing, bool spacingProvided = true}) {
    return MyoroCountryRegionCityDropdownStyle(spacing: spacingProvided ? (spacing ?? self.spacing) : null);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCountryRegionCityDropdownStyle &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'MyoroCountryRegionCityDropdownStyle(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
