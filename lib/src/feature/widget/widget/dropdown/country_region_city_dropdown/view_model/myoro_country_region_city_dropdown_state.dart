part of 'myoro_country_region_city_dropdown_view_model.dart';

/// State of [MyoroCountryRegionCityDropdownViewModel].
class MyoroCountryRegionCityDropdownState {
  /// Default constructor.
  MyoroCountryRegionCityDropdownState(
    MyoroCountryEnum? selectedCountry,
    MyoroRegion? selectedRegion,
    MyoroCity? selectedCity,
    this.onChanged,
  ) : _selectedCountryController = ValueNotifier(selectedCountry),
      _selectedRegionController = ValueNotifier(selectedRegion);

  /// On changed.
  MyoroCountryRegionCityDropdownOnChanged onChanged;

  /// Selected country.
  final ValueNotifier<MyoroCountryEnum?> _selectedCountryController;

  /// Selected region.
  final ValueNotifier<MyoroRegion?> _selectedRegionController;

  /// Selected city.
  MyoroCity? selectedCity;

  /// Dispose function.
  void dispose() {
    _selectedCountryController.dispose();
    _selectedRegionController.dispose();
  }

  /// [_selectedCountryController] getter.
  ValueNotifier<MyoroCountryEnum?> get selectedCountryController {
    return _selectedCountryController;
  }

  /// Getter of [_selectedCountry]'s value.
  MyoroCountryEnum? get selectedCountry {
    return _selectedCountryController.value;
  }

  /// [_selectedRegion] getter.
  ValueNotifier<MyoroRegion?> get selectedRegionController {
    return _selectedRegionController;
  }

  /// Getter of [_selectedRegion]'s value.
  MyoroRegion? get selectedRegion {
    return _selectedRegionController.value;
  }

  /// [_selectedCountry] setter.
  set selectedCountry(MyoroCountryEnum? selectedCountry) {
    _selectedCountryController.value = selectedCountry;
  }

  /// [_selectedRegion] setter.
  set selectedRegion(MyoroRegion? selectedRegion) {
    _selectedRegionController.value = selectedRegion;
  }
}
