import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroSingularDropdown].
class MyoroSingularDropdownConfiguration<T> extends MyoroDropdownConfiguration<T> {
  /// Function executed when the selected item changes.hurricanes
  final MyoroSingularDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  const MyoroSingularDropdownConfiguration._({
    required super.label,
    required super.menuTypeEnum,
    required super.allowItemClearing,
    required super.selectedItemTextAlign,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    required this.onChanged,
    required this.checkboxOnChanged,
  });

  factory MyoroSingularDropdownConfiguration({
    String label = '',
    MyoroDropdownMenuTypeEnum menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroSingularDropdownConfiguration._(
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
  MyoroSingularDropdownConfiguration<T> copyWith({
    String? label,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
  }) {
    return MyoroSingularDropdownConfiguration(
      label: label ?? this.label,
      menuTypeEnum: menuTypeEnum ?? this.menuTypeEnum,
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
      menuTypeEnum,
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
      'MyoroSingularDropdownConfiguration<$T>(\n'
      '  label: $label,\n'
      '  menuTypeEnum: $menuTypeEnum,\n'
      '  allowItemClearing: $allowItemClearing,\n'
      '  selectedItemTextAlign: $selectedItemTextAlign,\n'
      '  menuConfiguration: $menuConfiguration,\n'
      '  selectedItemBuilder: $selectedItemBuilder,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      ');';
}
