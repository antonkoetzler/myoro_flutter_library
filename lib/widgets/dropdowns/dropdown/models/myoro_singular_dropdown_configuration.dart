import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_singular_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingularDropdown].
@myoroModel
class MyoroSingularDropdownConfiguration<T> extends MyoroDropdownConfiguration<T>
    with $MyoroSingularDropdownConfigurationMixin<T> {
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
  bool get checkboxOnChangedNotNull => checkboxOnChanged != null;
}
