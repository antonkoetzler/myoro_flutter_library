import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Input dropdown configuration.
abstract class MyoroInputDropdownConfiguration<
  T,
  MENU_CONFIGURATION extends MyoroMenuConfiguration<T>
>
    extends MyoroDropdownConfiguration<T, MENU_CONFIGURATION> {
  const MyoroInputDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroInputDropdownSelectedItemBuilder<T> selectedItemBuilder;
}
