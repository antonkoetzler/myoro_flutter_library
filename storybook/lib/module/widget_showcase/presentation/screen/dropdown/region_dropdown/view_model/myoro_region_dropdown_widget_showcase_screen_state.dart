part of '../myoro_region_dropdown_widget_showcase_screen.dart';

/// State of [MyoroRegionDropdownWidgetShowcaseScreenViewModel].
final class MyoroRegionDropdownWidgetShowcaseScreenState extends ChangeNotifier {
  /// Selected country.
  MyoroCountryEnum? _selectedCountry = MyoroCountryEnum.unitedStates;
  MyoroCountryEnum? get selectedCountry => _selectedCountry;
  set selectedCountry(MyoroCountryEnum? selectedCountry) {
    _selectedCountry = selectedCountry;
    _selectedRegion = null;
    notifyListeners();
  }

  /// Selected region.
  MyoroRegion? _selectedRegion;
  MyoroRegion? get selectedRegion => _selectedRegion;
  set selectedRegion(MyoroRegion? selectedRegion) {
    _selectedRegion = selectedRegion;
    notifyListeners();
  }
}
