part of 'myoro_selection_dropdown_view_model.dart';

/// State of [MyoroSelectionDropdownViewModel].
final class MyoroSelectionDropdownState<T> {
  /// Default constructor.
  MyoroSelectionDropdownState(Set<T> selectedItems);

  /// [MyoroDropdown.showingController]
  final ValueNotifier<bool> showingController;

  /// [MyoroDropdown.selectedItemsController]
  final ValueNotifier<Set<T>> selectedItemsController;
}
