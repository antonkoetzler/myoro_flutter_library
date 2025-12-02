part of '../myoro_country_region_city_dropdown_widget_showcase_screen.dart';

/// State of [MyoroCountryRegionCityDropdownWidgetShowcaseScreenViewModel].
final class MyoroCountryRegionCityDropdownWidgetShowcaseScreenState extends ChangeNotifier {
  /// Selected country.
  MyoroCountryEnum? _selectedCountry;
  MyoroCountryEnum? get selectedCountry => _selectedCountry;
  set selectedCountry(MyoroCountryEnum? selectedCountry) {
    _selectedCountry = selectedCountry;
    _selectedRegion = null;
    _selectedCity = null;
    notifyListeners();
  }

  /// Selected region.
  MyoroRegion? _selectedRegion;
  MyoroRegion? get selectedRegion => _selectedRegion;
  set selectedRegion(MyoroRegion? selectedRegion) {
    _selectedRegion = selectedRegion;
    _selectedCity = null;
    notifyListeners();
  }

  /// Selected city.
  MyoroCity? _selectedCity;
  MyoroCity? get selectedCity => _selectedCity;
  set selectedCity(MyoroCity? selectedCity) {
    _selectedCity = selectedCity;
    notifyListeners();
  }
}
