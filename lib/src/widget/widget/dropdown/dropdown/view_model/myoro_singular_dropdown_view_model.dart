import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingularDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroSingularDropdownViewModel<T> extends MyoroDropdownViewModel<T, MyoroSingularDropdownConfiguration<T>> {
  MyoroSingularDropdownViewModel(MyoroSingularDropdownConfiguration<T> configuration)
    : super(configuration, {?configuration.selectedItem});

  @override
  void toggleItem(T item) {
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final selectedItems = state.selectedItems;
    selectedItemsNotifier.value = selectedItems.contains(item) ? {} : {item};
  }

  @override
  void enabledNotifierListener() {
    final configuration = state.configuration;
    final enabled = state.enabled;
    configuration.checkboxOnChanged?.call(enabled, selectedItem);
  }

  @override
  void selectedItemsNotifierListener() {
    super.selectedItemsNotifierListener();
    final configuration = state.configuration;
    final selectedItems = state.selectedItems;
    configuration.onChanged?.call(selectedItem);
    if (selectedItems.isNotEmpty) toggleMenu();
  }

  T? get selectedItem {
    final selectedItems = state.selectedItems;
    return selectedItems.isEmpty ? null : selectedItems.first;
  }
}
