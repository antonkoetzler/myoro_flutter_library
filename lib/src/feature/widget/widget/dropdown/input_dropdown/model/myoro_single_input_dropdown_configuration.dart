import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_input_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingleInputDropdown].
@myoroModel
class MyoroSingleInputDropdownConfiguration<T>
    extends MyoroInputDropdownConfiguration<T, MyoroSingleMenuConfiguration<T>>
    with _$MyoroSingleInputDropdownConfigurationMixin<T> {
  const MyoroSingleInputDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    super.label,
    super.enabled,
    super.checkboxOnChanged,
    super.toggleDropdownOnInputTap,
    super.toggleDropdownOnFieldSubmitted,
  });
}
