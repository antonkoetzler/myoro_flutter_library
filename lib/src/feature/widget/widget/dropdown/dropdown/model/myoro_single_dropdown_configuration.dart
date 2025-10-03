import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingleDropdown].
@myoroModel
class MyoroSingleDropdownConfiguration<T> extends MyoroDropdownConfiguration<T, MyoroSingleMenuConfiguration<T>>
    with _$MyoroSingleDropdownConfigurationMixin<T> {
  const MyoroSingleDropdownConfiguration({
    super.dropdownType,
    super.targetKey,
    required MyoroSingleMenuConfiguration<T> menuConfiguration,
  }) : super(menuConfiguration: menuConfiguration);
}
