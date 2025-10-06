import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of selection dropdowns.
@immutable
abstract class MyoroSelectionDropdownConfiguration<
  T,
  MENU_CONFIGURATION extends MyoroMenuConfiguration<T>
> {
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  const MyoroSelectionDropdownConfiguration({
    this.dropdownType = dropdownTypeDefaultValue,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// [MyoroMenuConfiguration] of the dropdown.
  final MENU_CONFIGURATION menuConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroSelectionDropdownSelectedItemBuilder<T> selectedItemBuilder;
}
