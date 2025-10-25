import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Input dropdown configuration.
@immutable
abstract class MyoroInputDropdownConfiguration<T, MENU_CONFIGURATION extends MyoroMenuConfiguration<T>>
    extends MyoroDropdownConfiguration<T, MENU_CONFIGURATION> {
  static const labelDefaultValue = kMyoroEmptyString;
  static const enabledDefaultValue = true;
  static const toggleDropdownOnInputTapDefaultValue = false;
  static const toggleDropdownOnFieldSubmittedDefaultValue = false;

  const MyoroInputDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.checkboxOnChanged,
    required this.selectedItemBuilder,
    this.toggleDropdownOnInputTap = toggleDropdownOnInputTapDefaultValue,
    this.toggleDropdownOnFieldSubmitted = toggleDropdownOnFieldSubmittedDefaultValue,
  });

  /// Label of the input.
  final String label;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroInputDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// If the dropdown is enabled or not.
  final bool enabled;

  /// Checkbox on changed to toggle if the dropdown is enabled or not.
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// If the dropdown should be toggled when the input is tapped
  final bool toggleDropdownOnInputTap;

  /// If the dropdown should be toggled when enter is pressed.
  final bool toggleDropdownOnFieldSubmitted;
}
