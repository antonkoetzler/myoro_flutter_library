import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_input_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiInputDropdown].
@myoroModel
class MyoroMultiInputDropdownConfiguration<T> extends MyoroInputDropdownConfiguration<T, MyoroMultiMenuConfiguration<T>>
    with _$MyoroMultiInputDropdownConfigurationMixin<T> {
  const MyoroMultiInputDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
  });
}
