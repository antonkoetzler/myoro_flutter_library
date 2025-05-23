import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingularDropdown] controller implementation if [MyoroDropdownController].
final class MyoroSingularDropdownController<T>
    extends MyoroDropdownController<T, MyoroSingularDropdownConfiguration<T>> {
  MyoroSingularDropdownController({required MyoroSingularDropdownConfiguration<T> configuration})
    : super(configuration);

  @override
  void enabledNotifierListener() {
    state.configuration.checkboxOnChanged?.call(state.enabled, selectedItem);
  }

  @override
  void selectedItemsControllerListener() {
    super.selectedItemsControllerListener();
    state.configuration.onChanged?.call(selectedItem);
  }

  T? get selectedItem {
    final selectedItems = state.selectedItemsController.value;
    return selectedItems.isEmpty ? null : selectedItems.first;
  }
}
