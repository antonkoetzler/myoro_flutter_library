import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingularMenu].
final class MyoroSingularMenuViewModel<T> extends MyoroMenuViewModel<T, MyoroSingularMenuConfiguration<T>> {
  MyoroSingularMenuViewModel(MyoroSingularMenuConfiguration<T> configuration)
    : super(configuration, {?configuration.selectedItem});

  @override
  void toggleItem(T item) {
    final configuration = state.configuration;
    state.selectedItems = {if (selectedItem != item) item};
    configuration.onChanged?.call(selectedItem);
  }

  /// Getter of the selected item.
  T? get selectedItem {
    final selectedItems = state.selectedItems;
    return selectedItems.isEmpty ? null : selectedItems.first;
  }
}
