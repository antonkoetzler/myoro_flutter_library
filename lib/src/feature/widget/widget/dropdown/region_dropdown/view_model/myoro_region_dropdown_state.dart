part of 'myoro_region_dropdown_view_model.dart';

/// State of [MyoroRegionDropdownViewModel].
class MyoroRegionDropdownState {
  /// Default constructor.
  MyoroRegionDropdownState(
    this.label,
    this.country,
    this.selectedRegion,
    this.onChanged,
    MyoroRequestControllerRequest<Set<MyoroRegion>> regionsRequestCallback,
  ) : _regionsRequestController = MyoroRequestController(regionsRequestCallback);

  /// Label.
  String label;

  /// Country.
  MyoroCountryEnum country;

  /// Selected region.
  MyoroRegion? selectedRegion;

  /// On changed.
  ValueChanged<MyoroRegion?> onChanged;

  /// Region request controller.
  final MyoroRequestController<Set<MyoroRegion>> _regionsRequestController;

  /// Dispose function.
  void dispose() {
    _regionsRequestController.dispose();
  }

  /// [_regionsRequestController] getter.
  MyoroRequestController<Set<MyoroRegion>> get regionsRequestController {
    return _regionsRequestController;
  }

  /// Getter of [_regionsRequestController]'s value.
  Set<MyoroRegion>? get regions {
    return _regionsRequestController.data;
  }
}
