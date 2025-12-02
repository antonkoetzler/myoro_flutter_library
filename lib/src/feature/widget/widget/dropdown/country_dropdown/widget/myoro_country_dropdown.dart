import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Country dropdown.
class MyoroCountryDropdown extends StatelessWidget {
  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroCountryDropdown({
    super.key,
    this.label = labelDefaultValue,
    this.selectedCountry,
    required this.onChanged,
  });

  /// Label.
  final String label;

  /// Selected country.
  final MyoroCountryEnum? selectedCountry;

  /// On changed.
  final ValueChanged<MyoroCountryEnum?> onChanged;

  /// Build function.
  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroCountryDropdownLabel = localization.myoroCountryDropdownLabel;
    final myoroCountryDropdownItemText = localization.myoroCountryDropdownItemText;

    return MyoroSingleSelectionDropdown(
      label: label.isNotEmpty ? label : myoroCountryDropdownLabel,
      items: MyoroCountryEnum.values.toSet(),
      selectedItem: selectedCountry,
      itemBuilder: (_, item) {
        final countryName = item.name(context);
        final text = myoroCountryDropdownItemText(item.emoji, countryName);
        return MyoroMenuIconTextButtonItem(text: text);
      },
      selectedItemBuilder: (item) {
        final countryName = item.name(context);
        return myoroCountryDropdownItemText(item.emoji, countryName);
      },
      onChanged: onChanged,
    );
  }
}
