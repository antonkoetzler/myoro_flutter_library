import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingularMenu].
class MyoroSingularMenuController<T> extends MyoroMenuController<T, MyoroSingularMenuViewModel<T>> {
  MyoroSingularMenuController({required MyoroSingularMenuConfiguration<T> configuration})
    : _selectedItemNotifier = ValueNotifier(configuration.selectedItem),
      super(MyoroSingularMenuViewModel(configuration)) {
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
