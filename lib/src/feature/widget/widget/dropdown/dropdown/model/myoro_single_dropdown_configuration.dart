import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingleDropdown].
@myoroModel
class MyoroSingleDropdownConfiguration<T> extends MyoroDropdownConfiguration<T, MyoroSingleMenuConfiguration<T>>
    with _$MyoroSingleDropdownConfigurationMixin<T> {
  factory MyoroSingleDropdownConfiguration({
    String label = MyoroDropdownConfiguration.labelDefaultValue,
    MyoroDropdownMenuTypeEnum menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroSingleMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownSelectedItemBuilder<T> selectedItemBuilder,
    MyoroSingleDropdownOnChanged<T>? onChanged,
    MyoroSingleDropdownCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroSingleDropdownConfiguration._(
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

  const MyoroSingleDropdownConfiguration._(
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
  final MyoroSingleDropdownOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingleDropdownCheckboxOnChanged<T>? checkboxOnChanged;

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
