import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMultiMenu].
final class MyoroMultiMenuViewModel<T> extends MyoroMenuViewModel<T, MyoroMultiMenuConfiguration<T>> {
  MyoroMultiMenuViewModel(MyoroMultiMenuConfiguration<T> configuration)
    : super(configuration, configuration.initiallySelectedItems);

  @override
  void toggleItem(T item) {
    final configuration = state.configuration;
    final selectedItems = Set<T>.from(state.selectedItems);
    state.selectedItems = selectedItems.contains(item) ? (selectedItems..remove(item)) : (selectedItems..add(item));
    configuration.onChanged?.call(state.selectedItems);
  }
}
