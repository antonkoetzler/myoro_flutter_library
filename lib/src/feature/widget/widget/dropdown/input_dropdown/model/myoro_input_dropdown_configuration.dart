import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Input dropdown configuration.
abstract class MyoroInputDropdownConfiguration<T, MENU_CONFIGURATION extends MyoroMenuConfiguration<T>>
    extends MyoroDropdownConfiguration<T, MENU_CONFIGURATION> {
  static const toggleDropdownOnInputTapDefaultValue = false;
  static const toggleDropdownOnFieldSubmittedDefaultValue = false;

  const MyoroInputDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    required this.selectedItemBuilder,
    this.toggleDropdownOnInputTap = toggleDropdownOnInputTapDefaultValue,
    this.toggleDropdownOnFieldSubmitted = toggleDropdownOnFieldSubmittedDefaultValue,
  });

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroInputDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// If the dropdown should be toggled when the input is tapped
  final bool toggleDropdownOnInputTap;

  /// If the dropdown should be toggled when enter is pressed.
  final bool toggleDropdownOnFieldSubmitted;
}
