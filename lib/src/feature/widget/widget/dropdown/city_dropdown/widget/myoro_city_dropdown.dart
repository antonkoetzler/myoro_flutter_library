import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_city_dropdown_state.dart';

/// City dropdown.
class MyoroCityDropdown extends StatefulWidget {
  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroCityDropdown({
    super.key,
    this.label = labelDefaultValue,
    required this.country,
    required this.region,
    this.selectedCity,
    required this.onChanged,
  });

  /// Label.
  final String label;

  /// Country.
  final MyoroCountryEnum country;

  /// Region.
  final MyoroRegion? region;

  /// Selected city.
  final MyoroCity? selectedCity;

  /// On changed.
  final ValueChanged<MyoroCity?> onChanged;

  @override
  State<MyoroCityDropdown> createState() {
    return _MyoroCityDropdownState();
  }
}
