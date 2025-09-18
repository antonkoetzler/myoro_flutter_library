import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiDropdown].
@immutable
@myoroModel
class MyoroMultiDropdownConfiguration<T> extends MyoroDropdownConfiguration<T, MyoroMultiMenuConfiguration<T>>
    with _$MyoroMultiDropdownConfigurationMixin<T> {
  factory MyoroMultiDropdownConfiguration({
    String label = MyoroDropdownConfiguration.labelDefaultValue,
    MyoroDropdownMenuTypeEnum menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMultiMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
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
    this.onChanged,
    this.checkboxOnChanged,
  );

  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  @override
  MyoroMultiDropdownConfiguration<T> copyWith({
    String? label,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
  }) {
    return MyoroMultiDropdownConfiguration(
      label: label ?? this.label,
      menuTypeEnum: menuTypeEnum ?? this.menuTypeEnum,
      enabled: enabled ?? this.enabled,
      allowItemClearing: allowItemClearing ?? this.allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign ?? this.selectedItemTextAlign,
      menuConfiguration: menuConfiguration ?? this.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? this.selectedItemBuilder,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
    );
  }

  @override
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
