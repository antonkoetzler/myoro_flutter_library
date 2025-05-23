import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] controller implementation if [MyoroDropdownController].
final class MyoroMultiDropdownController<T> extends MyoroDropdownController<T, MyoroMultiDropdownConfiguration<T>> {
  MyoroMultiDropdownController({required MyoroMultiDropdownConfiguration<T> configuration}) : super(configuration);

  @override
  void enabledNotifierListener() {
    state.configuration.checkboxOnChanged?.call(state.enabled, state.selectedItems);
  }

  @override
  void selectedItemsControllerListener() {
    super.selectedItemsControllerListener();
    state.configuration.onChanged?.call(state.selectedItems);
  }
}
