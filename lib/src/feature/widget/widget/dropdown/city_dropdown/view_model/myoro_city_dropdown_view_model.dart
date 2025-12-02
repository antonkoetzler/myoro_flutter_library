import 'package:country_state_city/country_state_city.dart' as csc;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_city_dropdown_state.dart';

/// View model of [MyoroCityDropdown].
class MyoroCityDropdownViewModel {
  /// Default constructor.
  MyoroCityDropdownViewModel(
    String label,
    MyoroCountryEnum country,
    MyoroRegion? region,
    MyoroCity? selectedCity,
    ValueChanged<MyoroCity?> onChanged,
  ) {
    _state = MyoroCityDropdownState(label, country, region, selectedCity, onChanged, () async {
      final countryCode = _state.country.isoValue;
      final stateCode = _state.region!.isoCode;
      final cscCities = await csc.getStateCities(countryCode, stateCode);
      return cscCities.map((c) => MyoroCity(name: c.name)).toSet();
    });
    fetch();
  }

  /// State.
  late final MyoroCityDropdownState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Fetch cities.
  void fetch() {
    _state.citiesRequestController.fetch();
  }

  /// [_state] getter.
  MyoroCityDropdownState get state {
    return _state;
  }
}
