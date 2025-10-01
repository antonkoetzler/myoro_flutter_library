import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of selection dropdowns.
@immutable
abstract class MyoroSelectionDropdownV2Configuration<T, MENU_CONFIGURATION extends MyoroMenuConfiguration<T>> {
  const MyoroSelectionDropdownV2Configuration({
    required this.dropdownType,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// [MyoroMenuConfiguration] of the dropdown.
  final MENU_CONFIGURATION menuConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroSelectionDropdownV2SelectedItemBuilder<T> selectedItemBuilder;
}
