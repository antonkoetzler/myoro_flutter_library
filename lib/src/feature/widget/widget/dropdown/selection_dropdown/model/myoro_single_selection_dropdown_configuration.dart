import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_selection_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingleSelectionDropdown].
@myoroModel
class MyoroSingleSelectionDropdownConfiguration<T>
    extends MyoroSelectionDropdownConfiguration<T, MyoroSingleMenuConfiguration<T>>
    with _$MyoroSingleSelectionDropdownConfigurationMixin<T> {
  factory MyoroSingleSelectionDropdownConfiguration({
    String label = MyoroSelectionDropdownConfiguration.labelDefaultValue,
    MyoroSelectionDropdownMenuTypeEnum menuTypeEnum = MyoroSelectionDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroSelectionDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroSelectionDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroSingleMenuConfiguration<T> menuConfiguration,
    required MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder,
    MyoroSingleSelectionDropdownOnChanged<T>? onChanged,
    MyoroSingleSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroSingleSelectionDropdownConfiguration._(
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

  const MyoroSingleSelectionDropdownConfiguration._(
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
  final MyoroSingleSelectionDropdownOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingleSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged;

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
