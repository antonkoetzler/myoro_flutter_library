import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroMultiDropdownViewModel<T> extends MyoroDropdownViewModel<T, MyoroMultiDropdownConfiguration<T>> {
  MyoroMultiDropdownViewModel(MyoroMultiDropdownConfiguration<T> configuration)
    : super(configuration, configuration.selectedItems);

  @override
  void toggleItem(T item) {
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final selectedItems = state.selectedItems;
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    selectedItemsNotifier.value = selectedItems;
  }

  @override
  void enabledNotifierListener() {
    final configuration = state.configuration;
    final checkboxOnChanged = configuration.checkboxOnChanged;
    final enabled = state.enabled;
    final selectedItems = state.selectedItems;
    checkboxOnChanged?.call(enabled, selectedItems);
  }

  @override
  void selectedItemsNotifierListener() {
    super.selectedItemsNotifierListener();
    final configuration = state.configuration;
    final onChanged = configuration.onChanged;
    final selectedItems = state.selectedItems;
    onChanged?.call(selectedItems);
  }
}
