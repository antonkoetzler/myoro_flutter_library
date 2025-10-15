import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleAccordion].
class MyoroSingleAccordionController<T> extends MyoroAccordionController<T, MyoroSingleAccordionViewModel<T>> {
  /// Default constructor.
  MyoroSingleAccordionController({required MyoroSingleAccordionConfiguration<T> configuration}) : super(MyoroSingleAccordionViewModel(configuration)) {
    viewModel.state.selectedItemsController.addListener(_selectedItemsControllerListener);
  }

  /// [ValueNotifier] of the selected item.
  final _selectedItemController = ValueNotifier<T?>(null);

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemController.dispose();
    viewModel.state.selectedItemsController.removeListener(_selectedItemsControllerListener);
    super.dispose();
  }

  /// Listener of [MyoroAccordionState.selectedItemsController].
  void _selectedItemsControllerListener() {
    final state = viewModel.state;
    final selectedItems = state.selectedItems;
    selectedItem = selectedItems.isEmpty ? null : selectedItems.first;
  }

  /// Getter of [_selectedItemController]'s value.
  T? get selectedItem {
    final selectedItems = viewModel.state.selectedItems;
    return selectedItems.isNotEmpty ? selectedItems.first : null;
  }

  /// [_selectedItemController] setter.
  set selectedItem(T? item) {
    _selectedItemController.value = item;
  }
}
