import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] controller implementation if [MyoroDropdownViewModel].
final class MyoroMultiDropdownViewModel<T> extends MyoroDropdownViewModel<T, MyoroMultiDropdownConfiguration<T>> {
  MyoroMultiDropdownViewModel(super.configuration, super.controller);

  @override
  void enabledNotifierListener() {
    state.configuration.checkboxOnChanged?.call(controller.enabled, controller.selectedItems);
  }

  @override
  void selectedItemsControllerListener() {
    super.selectedItemsControllerListener();
    state.configuration.onChanged?.call(controller.selectedItems);
  }
}
