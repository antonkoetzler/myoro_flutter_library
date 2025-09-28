import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract model that encapsulates options for a selection dropdown.
///
/// [MyoroSingleSelectionDropdown] and [MyoroMultiSelectionDropdown] have their separation
/// configuration classes extending [MyoroSelectionSelectionDropdownConfiguration] for specific args.
@immutable
abstract class MyoroSelectionDropdownConfiguration<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>
> {
  static const labelDefaultValue = '';
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;
  static const enabledDefaultValue = true;
  static const allowItemClearingDefaultValue = true;
  static const selectedItemTextAlignDefaultValue = MyoroInputConfiguration.textAlignDefaultValue;

  const MyoroSelectionDropdownConfiguration(
    this.label,
    this.dropdownType,
    this.enabled,
    this.allowItemClearing,
    this.selectedItemTextAlign,
    this.dropdownConfiguration,
    this.selectedItemBuilder,
  );

  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String label;

  /// Dropdown's [Widget] composition.
  final MyoroDropdownTypeEnum dropdownType;

  /// If the dropdown is enabled.
  final bool enabled;

  /// If the clear button of [_Input]'s [MyoroInput] will be displayed.
  final bool allowItemClearing;

  /// [MyoroInputConfiguration.textAlign] of [_Input].
  final TextAlign selectedItemTextAlign;

  /// [MyoroMenuConfiguration] of the [_Menu]'s [MyoroMenu].
  final C dropdownConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// Returns if the checkbox callback is provided.
  bool get checkboxOnChangedNotNull;
}
