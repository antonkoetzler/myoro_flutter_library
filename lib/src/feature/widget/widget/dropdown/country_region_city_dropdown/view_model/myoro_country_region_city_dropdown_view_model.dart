import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_country_region_city_dropdown_state.dart';

/// View model of [MyoroCountryRegionCityDropdown].
class MyoroCountryRegionCityDropdownViewModel {
  /// Default constructor.
  MyoroCountryRegionCityDropdownViewModel(
    MyoroCountryEnum? selectedCountry,
    MyoroRegion? selectedRegion,
    MyoroCity? selectedCity,
    MyoroCountryRegionCityDropdownOnChanged onChanged,
  ) : _state = MyoroCountryRegionCityDropdownState(selectedCountry, selectedRegion, selectedCity, onChanged);

  /// State.
  final MyoroCountryRegionCityDropdownState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Handle country changed.
  void onCountryChanged(MyoroCountryEnum? country) {
    _state
      ..selectedCountry = country
      ..selectedRegion = null
      ..selectedCity = null
      ..onChanged(country, null, null);
  }

  /// Handle region changed.
  void onRegionChanged(MyoroRegion? region) {
    _state.selectedRegion = region;
    _state.selectedCity = null;
    _state.onChanged(_state.selectedCountry, region, null);
  }

  /// Handle city changed.
  void onCityChanged(MyoroCity? city) {
    _state.selectedCity = city;
    _state.onChanged(_state.selectedCountry, _state.selectedRegion, city);
  }

  /// [_state] getter.
  MyoroCountryRegionCityDropdownState get state {
    return _state;
  }
}
