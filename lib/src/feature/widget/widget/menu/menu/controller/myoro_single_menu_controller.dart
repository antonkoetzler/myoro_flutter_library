import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleMenu].
class MyoroSingleMenuController<T> extends MyoroMenuController<T, MyoroSingleMenuViewModel<T>> {
  /// Creates a new instance of [MyoroSingleMenuController].
  MyoroSingleMenuController({required MyoroSingleMenuConfiguration<T> configuration})
    : _selectedItemController = ValueNotifier(configuration.selectedItem),
      super(MyoroSingleMenuViewModel(configuration)) {
    viewModel.state.selectedItemsController.addListener(_selectedItemsControllerListener);
  }

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?> _selectedItemController;

  /// [_selectedItemController] getter.
  ValueNotifier<T?> get selectedItemController => _selectedItemController;

  /// Getter of [_selectedItemController]'s value.
  T? get selectedItem => _selectedItemController.value;

  /// Listener of [MyoroMenuState.selectedItemsController].
  void _selectedItemsControllerListener() {
    final state = viewModel.state;
    final selectedItems = state.selectedItems;
    _selectedItemController.value = selectedItems.isNotEmpty ? selectedItems.first : null;
  }

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemController.dispose();
    viewModel.state.selectedItemsController.removeListener(_selectedItemsControllerListener);
    super.dispose();
  }
}
