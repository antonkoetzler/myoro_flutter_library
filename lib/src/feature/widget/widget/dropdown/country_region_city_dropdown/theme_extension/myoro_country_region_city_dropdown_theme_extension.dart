import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_country_region_city_dropdown_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCountryRegionCityDropdown].
@immutable
@myoroThemeExtension
class MyoroCountryRegionCityDropdownThemeExtension extends ThemeExtension<MyoroCountryRegionCityDropdownThemeExtension>
    with _$MyoroCountryRegionCityDropdownThemeExtensionMixin
    implements MyoroCountryRegionCityDropdownStyle {
  /// Default constructor.
  const MyoroCountryRegionCityDropdownThemeExtension({this.spacing});

  /// Fake constructor.
  MyoroCountryRegionCityDropdownThemeExtension.fake() : spacing = myoroNullableFake<double>();

  /// Builder constructor.
  const MyoroCountryRegionCityDropdownThemeExtension.builder() : spacing = kMyoroMultiplier * 3;

  /// Spacing between dropdowns.
  @override
  final double? spacing;

  /// Lerp function.
  @override
  MyoroCountryRegionCityDropdownThemeExtension lerp(MyoroCountryRegionCityDropdownThemeExtension? other, double t) {
    if (other is! MyoroCountryRegionCityDropdownThemeExtension) return this;
    final style = MyoroCountryRegionCityDropdownStyle.lerp(this, other, t);
    return MyoroCountryRegionCityDropdownThemeExtension(spacing: style.spacing);
  }
}
