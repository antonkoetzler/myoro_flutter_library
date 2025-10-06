import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroSelectionDropdown].
@immutable
abstract class MyoroSelectionDropdownConfiguration<T, MENU_CONFIGURATION extends MyoroMenuConfiguration<T>>
    extends MyoroInputDropdownConfiguration<T, MENU_CONFIGURATION> {
  /// Default constructor.
  const MyoroSelectionDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    super.label,
    super.enabled,
    super.checkboxOnChanged,
  }) : super(toggleDropdownOnInputTap: true);
}
