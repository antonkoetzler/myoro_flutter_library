// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_country_region_city_dropdown_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCountryRegionCityDropdownThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCountryRegionCityDropdownThemeExtension with _$MyoroCountryRegionCityDropdownThemeExtensionMixin {}
/// ```
mixin _$MyoroCountryRegionCityDropdownThemeExtensionMixin
    on ThemeExtension<MyoroCountryRegionCityDropdownThemeExtension> {
  MyoroCountryRegionCityDropdownThemeExtension get self => this as MyoroCountryRegionCityDropdownThemeExtension;

  @override
  MyoroCountryRegionCityDropdownThemeExtension copyWith({double? spacing, bool spacingProvided = true}) {
    return MyoroCountryRegionCityDropdownThemeExtension(spacing: spacingProvided ? (spacing ?? self.spacing) : null);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCountryRegionCityDropdownThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'MyoroCountryRegionCityDropdownThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
