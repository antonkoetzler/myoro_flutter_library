import 'package:country_state_city/country_state_city.dart' as csc;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_region_dropdown_state.dart';

/// View model of [MyoroRegionDropdown].
class MyoroRegionDropdownViewModel {
  /// Default constructor.
  MyoroRegionDropdownViewModel(
    String label,
    MyoroCountryEnum country,
    MyoroRegion? selectedRegion,
    ValueChanged<MyoroRegion?> onChanged,
  ) {
    _state = MyoroRegionDropdownState(label, country, selectedRegion, onChanged, () async {
      final countryCode = _state.country.isoValue;
      final cscRegions = await csc.getStatesOfCountry(countryCode);
      return cscRegions.map((r) => MyoroRegion(name: r.name, isoCode: r.isoCode)).toSet();
    });
    fetch();
  }

  /// State.
  late final MyoroRegionDropdownState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch regions.
  void fetch() {
    _state.regionsRequestController.fetch();
  }

  /// [_state] getter.
  MyoroRegionDropdownState get state {
    return _state;
  }
}
