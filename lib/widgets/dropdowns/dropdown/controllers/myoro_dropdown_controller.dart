import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a dropdown.
abstract class MyoroDropdownController<T> implements MyoroDropdownControllerInterface<T> {
  static const enabledDefaultValue = true;

  MyoroDropdownController({bool enabled = enabledDefaultValue, Set<T> initiallySelectedItems = const {}})
    : state = MyoroDropdownControllerState(enabled, initiallySelectedItems);

  final MyoroDropdownControllerState<T> state;

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void toggleEnabled([bool? enabled]) {
    state.enabledController.value = enabled ?? !state.enabled;
  }

  @override
  void toggleItem(T item) {
    final selectedItems = state.selectedItemsController.value;
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    state.selectedItemsController.value = selectedItems;
  }

  @override
  void clear() {
    state.selectedItemsController.value = const {};
  }
}
