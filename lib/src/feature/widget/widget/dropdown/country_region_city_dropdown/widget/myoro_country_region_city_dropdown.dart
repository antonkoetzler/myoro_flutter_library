import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_country_region_city_dropdown_state.dart';

/// Callback for [MyoroCountryRegionCityDropdown.onChanged].
typedef MyoroCountryRegionCityDropdownOnChanged =
    void Function(MyoroCountryEnum? country, MyoroRegion? region, MyoroCity? city);

/// Country, region, and city dropdown.
class MyoroCountryRegionCityDropdown extends StatefulWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroCountryRegionCityDropdownStyle();

  /// Default constructor.
  const MyoroCountryRegionCityDropdown({
    super.key,
    this.style = styleDefaultValue,
    this.selectedCountry,
    this.selectedRegion,
    this.selectedCity,
    required this.onChanged,
  });

  /// Style.
  final MyoroCountryRegionCityDropdownStyle style;

  /// Selected country.
  final MyoroCountryEnum? selectedCountry;

  /// Selected region.
  final MyoroRegion? selectedRegion;

  /// Selected city.
  final MyoroCity? selectedCity;

  /// On changed.
  final MyoroCountryRegionCityDropdownOnChanged onChanged;

  /// Create state function.
  @override
  State<MyoroCountryRegionCityDropdown> createState() {
    return _MyoroCountryRegionCityDropdownState();
  }
}
