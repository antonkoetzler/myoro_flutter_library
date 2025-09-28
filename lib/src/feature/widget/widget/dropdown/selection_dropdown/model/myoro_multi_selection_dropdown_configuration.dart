import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_selection_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiSelectionDropdown].
@myoroModel
class MyoroMultiSelectionDropdownConfiguration<T>
    extends MyoroSelectionDropdownConfiguration<T, MyoroMultiDropdownConfiguration<T>>
    with _$MyoroMultiSelectionDropdownConfigurationMixin<T> {
  factory MyoroMultiSelectionDropdownConfiguration({
    String label = MyoroSelectionDropdownConfiguration.labelDefaultValue,
    MyoroDropdownTypeEnum dropdownType = MyoroSelectionDropdownConfiguration.dropdownTypeDefaultValue,
    bool enabled = MyoroSelectionDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroSelectionDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMultiDropdownConfiguration<T> dropdownConfiguration,
    required MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder,
    MyoroMultiSelectionDropdownOnChanged<T>? onChanged,
    MyoroMultiSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroMultiSelectionDropdownConfiguration._(
      label,
      dropdownType,
      enabled,
      allowItemClearing,
      selectedItemTextAlign,
      dropdownConfiguration,
      selectedItemBuilder,
      onChanged,
      checkboxOnChanged,
    );
  }

  const MyoroMultiSelectionDropdownConfiguration._(
    super.label,
    super.dropdownType,
    super.enabled,
    super.allowItemClearing,
    super.selectedItemTextAlign,
    super.dropdownConfiguration,
    super.selectedItemBuilder,
    this.onChanged,
    this.checkboxOnChanged,
  );

  /// Function executed when the selected item changes.
  final MyoroMultiSelectionDropdownOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged;

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
