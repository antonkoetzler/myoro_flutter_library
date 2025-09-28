import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroDropdown].
@immutable
abstract class MyoroDropdownConfiguration<T, C extends MyoroMenuConfiguration<T>> {
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  const MyoroDropdownConfiguration({
    this.dropdownType = dropdownTypeDefaultValue,
    this.targetKey,
    required this.menuConfiguration,
  });

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// [GlobalKey] of the [Widget] to base the dropdown from:
  /// 1. [MyoroDropdownTypeEnum.overlay]: Used to set the offset and width of the dropdown.
  /// 2. [MyoroDropdownTypeEnum.expanding]: Used to set the width of the dropdown.
  /// 3. [MyoroDropdownTypeEnum.modal]: Useless.
  /// 4. [MyoroDropdownTypeEnum.bottomSheet]: Useless.
  final GlobalKey? targetKey;

  /// [MyoroMenuConfiguration] of the dropdown.
  final C menuConfiguration;
}
