import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_myoro_region_dropdown_state.dart';

/// Region dropdown.
class MyoroRegionDropdown extends StatefulWidget {
  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroRegionDropdown({
    super.key,
    this.label = labelDefaultValue,
    required this.country,
    this.selectedRegion,
    required this.onChanged,
  });

  /// Label.
  final String label;

  /// Country.
  final MyoroCountryEnum country;

  /// Selected region.
  final MyoroRegion? selectedRegion;

  /// On changed.
  final ValueChanged<MyoroRegion?> onChanged;

  /// Create state function.
  @override
  State<MyoroRegionDropdown> createState() {
    return _MyoroRegionDropdownState();
  }
}
