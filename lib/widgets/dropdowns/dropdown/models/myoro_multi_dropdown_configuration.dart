import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiDropdown].
@myoroModel
class MyoroMultiDropdownConfiguration<T> extends MyoroDropdownConfiguration<T>
    with $MyoroMultiDropdownConfigurationMixin<T> {
  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  const MyoroMultiDropdownConfiguration._({
    required super.label,
    required super.menuTypeEnum,
    required super.allowItemClearing,
    required super.selectedItemTextAlign,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    required this.onChanged,
    required this.checkboxOnChanged,
  });

  factory MyoroMultiDropdownConfiguration({
    String label = '',
    MyoroDropdownMenuTypeEnum menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroMultiDropdownConfiguration._(
      label: label,
      menuTypeEnum: menuTypeEnum,
      allowItemClearing: allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign,
      menuConfiguration: menuConfiguration,
      selectedItemBuilder: selectedItemBuilder,
      onChanged: onChanged,
      checkboxOnChanged: checkboxOnChanged,
    );
  }

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
