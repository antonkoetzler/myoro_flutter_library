import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_selection_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiSelectionDropdown].
@myoroModel
class MyoroMultiSelectionDropdownConfiguration<T>
    extends MyoroSelectionDropdownConfiguration<T, MyoroMultiMenuConfiguration<T>>
    with _$MyoroMultiSelectionDropdownConfigurationMixin<T> {
  factory MyoroMultiSelectionDropdownConfiguration({
    String label = MyoroSelectionDropdownConfiguration.labelDefaultValue,
    MyoroSelectionDropdownMenuTypeEnum menuTypeEnum = MyoroSelectionDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroSelectionDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroSelectionDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMultiMenuConfiguration<T> menuConfiguration,
    required MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder,
    MyoroMultiSelectionDropdownOnChanged<T>? onChanged,
    MyoroMultiSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroMultiSelectionDropdownConfiguration._(
      label,
      menuTypeEnum,
      enabled,
      allowItemClearing,
      selectedItemTextAlign,
      menuConfiguration,
      selectedItemBuilder,
      onChanged,
      checkboxOnChanged,
    );
  }

  const MyoroMultiSelectionDropdownConfiguration._(
    super.label,
    super.menuTypeEnum,
    super.enabled,
    super.allowItemClearing,
    super.selectedItemTextAlign,
    super.menuConfiguration,
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
