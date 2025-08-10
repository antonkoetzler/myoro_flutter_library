import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiDropdown].
@immutable
@myoroModel
class MyoroMultiDropdownConfiguration<T> extends MyoroDropdownConfiguration<T>
    with _$MyoroMultiDropdownConfigurationMixin<T> {
  factory MyoroMultiDropdownConfiguration({
    String label = MyoroDropdownConfiguration.labelDefaultValue,
    MyoroDropdownMenuTypeEnum menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
    Set<T> selectedItems = const {},
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroMultiDropdownConfiguration._(
      label,
      menuTypeEnum,
      enabled,
      allowItemClearing,
      selectedItemTextAlign,
      menuConfiguration,
      selectedItemBuilder,
      selectedItems,
      onChanged,
      checkboxOnChanged,
    );
  }

  const MyoroMultiDropdownConfiguration._(
    super.label,
    super.menuTypeEnum,
    super.enabled,
    super.allowItemClearing,
    super.selectedItemTextAlign,
    super.menuConfiguration,
    super.selectedItemBuilder,
    this.selectedItems,
    this.onChanged,
    this.checkboxOnChanged,
  );

  /// Initially selected items.
  final Set<T> selectedItems;

  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
