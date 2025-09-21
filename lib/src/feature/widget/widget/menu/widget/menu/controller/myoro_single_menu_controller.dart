import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleMenu].
class MyoroSingleMenuController<T> extends MyoroMenuController<T, MyoroSingleMenuViewModel<T>> {
  MyoroSingleMenuController({required MyoroSingleMenuConfiguration<T> configuration})
    : _selectedItemNotifier = ValueNotifier(configuration.selectedItem),
      super(MyoroSingleMenuViewModel(configuration)) {
    viewModel.state.selectedItemsNotifier.addListener(_selectedItemsNotifierListener);
  }

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemNotifier.dispose();
    viewModel.state.selectedItemsNotifier.removeListener(_selectedItemsNotifierListener);
    super.dispose();
  }

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?> _selectedItemNotifier;

  /// [_selectedItemNotifier] getter.
  ValueNotifier<T?> get selectedItemNotifier => _selectedItemNotifier;

  /// Getter of [_selectedItemNotifier]'s value.
  T? get selectedItem => _selectedItemNotifier.value;

  /// Listener of [MyoroMenuState.selectedItemsNotifier].
  void _selectedItemsNotifierListener() {
    final state = viewModel.state;
    final selectedItems = state.selectedItems;
    _selectedItemNotifier.value = selectedItems.isNotEmpty ? selectedItems.first : null;
  }
}
