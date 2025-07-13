import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingularDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroSingularDropdownViewModel<T> extends MyoroDropdownViewModel<T, MyoroSingularDropdownConfiguration<T>> {
  @override
  void enabledNotifierListener() {
    state.configuration.checkboxOnChanged?.call(controller.enabled, selectedItem);
  }

  @override
  void selectedItemsControllerListener() {
    super.selectedItemsControllerListener();
    state.configuration.onChanged?.call(selectedItem);
    if (controller.selectedItems.isNotEmpty) toggleMenu();
  }

  T? get selectedItem {
    final selectedItems = controller.selectedItemsController.value;
    return selectedItems.isEmpty ? null : selectedItems.first;
  }
}
