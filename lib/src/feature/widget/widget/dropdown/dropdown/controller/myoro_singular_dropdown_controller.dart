import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroMultiDropdown] implementation of [MyoroDropdownController].
class MyoroSingularDropdownController<T> extends MyoroDropdownController<T, MyoroSingularDropdownViewModel<T>> {
  factory MyoroSingularDropdownController({required MyoroSingularDropdownConfiguration<T> configuration}) {
    final viewModel = MyoroSingularDropdownViewModel(configuration);
    final state = viewModel.state;
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final selectedItems = state.selectedItems;
    final selectedItemNotifier = ValueNotifier(selectedItems.isNotEmpty ? selectedItems.first : null);
    selectedItemsNotifier.addListener(() {
      final state = viewModel.state;
      final selectedItems = state.selectedItems;
      selectedItemNotifier.value = selectedItems.isNotEmpty ? selectedItems.first : null;
    });
    return MyoroSingularDropdownController._(viewModel, selectedItemNotifier);
  }

  MyoroSingularDropdownController._(super.viewModel, this.selectedItemNotifier);

  /// [ValueNotifier] that is connected to [MyoroDropdownState.selectedItemsNotifier]
  /// to listen when the selected item of this [MyoroSingularDropdownController] changes.
  final ValueNotifier<T?> selectedItemNotifier;

  /// Dispose function.
  @override
  void dispose() {
    super.dispose();
    selectedItemNotifier.dispose();
  }

  /// Getter of the selected item.
  T? get selectedItem {
    final state = viewModel.state;
    final selectedItems = state.selectedItems;
    return selectedItems.isNotEmpty ? selectedItems.first : null;
  }
}
