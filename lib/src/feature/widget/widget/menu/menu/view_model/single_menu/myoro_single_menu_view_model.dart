import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleMenu].
final class MyoroSingleMenuViewModel<T> extends MyoroMenuViewModel<T, MyoroSingleMenuConfiguration<T>> {
  MyoroSingleMenuViewModel(MyoroSingleMenuConfiguration<T> configuration)
    : super(configuration, {?configuration.selectedItem});

  @override
  void toggleItem(T item) {
    final configuration = state.configuration;
    if (item == state.selectedItems.first && !configuration.allowDeselection) return;
    state.selectedItems = {if (selectedItem != item) item};
    configuration.onChanged?.call(selectedItem);
  }

  /// Getter of the selected item.
  T? get selectedItem {
    final selectedItems = state.selectedItems;
    return selectedItems.isEmpty ? null : selectedItems.first;
  }
}
