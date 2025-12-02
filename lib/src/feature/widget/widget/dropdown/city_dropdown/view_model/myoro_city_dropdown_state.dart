part of 'myoro_city_dropdown_view_model.dart';

/// State of [MyoroCityDropdownViewModel].
class MyoroCityDropdownState {
  /// Default constructor.
  MyoroCityDropdownState(
    this.label,
    this.country,
    this.region,
    this.selectedCity,
    this.onChanged,
    MyoroRequestControllerRequest<Set<MyoroCity>> citiesRequestCallback,
  ) : _citiesRequestController = MyoroRequestController(citiesRequestCallback);

  /// Label.
  String label;

  /// Country.
  MyoroCountryEnum country;

  /// Region.
  MyoroRegion? region;

  /// Selected city.
  MyoroCity? selectedCity;

  /// On changed.
  ValueChanged<MyoroCity?> onChanged;

  /// Cities request controller.
  final MyoroRequestController<Set<MyoroCity>> _citiesRequestController;

  /// Dispose function.
  void dispose() {
    _citiesRequestController.dispose();
  }

  /// [_citiesRequestController] getter.
  MyoroRequestController<Set<MyoroCity>> get citiesRequestController {
    return _citiesRequestController;
  }

  /// Getter of [_citiesRequestController]'s value.
  Set<MyoroCity>? get cities {
    return _citiesRequestController.data;
  }
}
