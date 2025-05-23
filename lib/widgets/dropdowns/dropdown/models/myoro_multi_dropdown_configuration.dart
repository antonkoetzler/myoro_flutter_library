import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroMultiDropdown].
class MyoroMultiDropdownConfiguration<T> extends MyoroDropdownConfiguration<T> {
  /// Function executed when the selected item changes.
  final MyoroMultiDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  const MyoroMultiDropdownConfiguration._({
    required super.label,
    required super.initiallySelectedItems,
    required super.menuTypeEnum,
    required super.enabled,
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
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
    Set<T>? initiallySelectedItems,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroMultiDropdownConfiguration._(
      label: label,
      menuTypeEnum: menuTypeEnum,
      enabled: enabled,
      allowItemClearing: allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign,
      menuConfiguration: menuConfiguration,
      selectedItemBuilder: selectedItemBuilder,
      initiallySelectedItems: initiallySelectedItems ?? const {},
      onChanged: onChanged,
      checkboxOnChanged: checkboxOnChanged,
    );
  }

  @override
  MyoroMultiDropdownConfiguration<T> copyWith({
    String? label,
    Set<T>? initiallySelectedItems,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    MyoroMultiDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroMultiDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
  }) {
    return MyoroMultiDropdownConfiguration(
      label: label ?? this.label,
      initiallySelectedItems: initiallySelectedItems ?? this.initiallySelectedItems,
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

  @override
  List<Object?> get props {
    return [
      label,
      initiallySelectedItems,
      menuTypeEnum,
      enabled,
      allowItemClearing,
      selectedItemTextAlign,
      menuConfiguration,
      selectedItemBuilder,
      onChanged,
      checkboxOnChanged,
    ];
  }

  @override
  String toString() =>
      'MyoroMultiDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  initiallySelectedItems: $initiallySelectedItems,\n'
      '  menuTypeEnum: $menuTypeEnum,\n'
      '  enabled: $enabled,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  selectedItemTextAlign: $selectedItemTextAlign,\n'
      '  menuConfiguration: $menuConfiguration,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      ');';
}
