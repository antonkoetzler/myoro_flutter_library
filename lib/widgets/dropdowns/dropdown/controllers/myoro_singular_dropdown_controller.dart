import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementaiton of [MyoroDropdownController].
class MyoroSingularDropdownController<T> extends MyoroDropdownController<T> {
  MyoroSingularDropdownController({super.enabled});

  /// Currently selected item.
  T? get selectedItem => state.selectedItems.isEmpty ? null : state.selectedItems.first;
}
