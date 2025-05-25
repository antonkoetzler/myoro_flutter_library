import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementation of [MyoroDropdownController].
class MyoroMultiDropdownController<T> extends MyoroDropdownController<T> {
  MyoroMultiDropdownController({super.enabled, required});

  /// Selected items.
  Set<T> get selectedItems => state.selectedItems;
}
