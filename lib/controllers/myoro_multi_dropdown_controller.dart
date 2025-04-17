import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiDropdown].
class MyoroMultiDropdownController<T> extends MyoroDropdownController<T> {
  /// Selects various items. If any items are already added, they will not be removed.
  void selectItems(Set<T> items) {
    bloc.add(SelectItemsEvent(items));
  }

  /// Removes various selected items. If any items are already removed, they will not be added.
  void removeItems(Set<T> items) {
    bloc.add(RemoveSelectedItemsEvent(items));
  }
}
