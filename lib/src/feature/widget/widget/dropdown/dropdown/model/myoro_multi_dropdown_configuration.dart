import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiDropdown].
@myoroModel
class MyoroMultiDropdownConfiguration<T> extends MyoroDropdownConfiguration<T, MyoroMultiMenuConfiguration<T>>
    with _$MyoroMultiDropdownConfigurationMixin<T> {
  const MyoroMultiDropdownConfiguration({
    super.dropdownType,
    super.targetKey,
    required MyoroMultiMenuConfiguration<T> menuConfiguration,
  }) : super(menuConfiguration: menuConfiguration);
}
