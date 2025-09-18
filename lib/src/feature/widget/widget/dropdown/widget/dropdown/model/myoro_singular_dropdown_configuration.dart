import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_singular_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingularDropdown].
@immutable
@myoroModel
class MyoroSingularDropdownConfiguration<T> extends MyoroDropdownConfiguration<T, MyoroSingularMenuConfiguration<T>>
    with _$MyoroSingularDropdownConfigurationMixin<T> {
  factory MyoroSingularDropdownConfiguration({
    String label = MyoroDropdownConfiguration.labelDefaultValue,
    MyoroDropdownMenuTypeEnum menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue,
    bool enabled = MyoroDropdownConfiguration.enabledDefaultValue,
    bool allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    TextAlign selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required MyoroSingularMenuConfiguration<T> menuConfiguration,
    required MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
  }) {
    return MyoroSingularDropdownConfiguration._(
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

  const MyoroSingularDropdownConfiguration._(
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

  /// Function executed when the selected item changes.hurricanes
  final MyoroSingularDropdownConfigurationOnChanged<T>? onChanged;

  /// Function executed when the enabled/disabled checkbox is pressed.
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged;

  @override
  MyoroSingularDropdownConfiguration<T> copyWith({
    String? label,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroSingularMenuConfiguration<T>? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
    MyoroSingularDropdownConfigurationOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroSingularDropdownConfigurationCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
  }) {
    return MyoroSingularDropdownConfiguration(
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
