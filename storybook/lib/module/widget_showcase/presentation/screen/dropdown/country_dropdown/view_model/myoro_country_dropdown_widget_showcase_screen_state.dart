part of '../myoro_country_dropdown_widget_showcase_screen.dart';

/// State of [MyoroCountryDropdownWidgetShowcaseScreenViewModel].
final class MyoroCountryDropdownWidgetShowcaseScreenState extends ChangeNotifier {
  /// Selected country.
  MyoroCountryEnum? _selectedCountry;
  MyoroCountryEnum? get selectedCountry => _selectedCountry;
  set selectedCountry(MyoroCountryEnum? selectedCountry) {
    _selectedCountry = selectedCountry;
    notifyListeners();
  }
}
