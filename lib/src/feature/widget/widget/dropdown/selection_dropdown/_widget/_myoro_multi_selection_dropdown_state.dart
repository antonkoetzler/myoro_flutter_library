part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [State] of [MyoroMultiSelectionDropdown].
final class _MyoroMultiSelectionDropdownState<T> extends State<MyoroMultiSelectionDropdown<T>> {
  /// View model.
  late final MyoroMultiSelectionDropdownViewModel<T> _viewModel;

  /// Init state function.
  @override
  void initState() {
    super.initState();
    MyoroMultiSelectionDropdownViewModel(
      widget.label,
      widget.enabled,
      widget.showSearchBar,
      widget.dropdownType,
      widget.items,
      widget.showingController,
      widget.itemBuilder,
      widget.selectedItemBuilder,
      widget.selectedItems,
      widget.selectedItemsController,
      widget.onChanged,
    );
  }

  /// Did update widget function.
  @override
  void didUpdateWidget(MyoroMultiSelectionDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final state = _viewModel.state;

    state
      ..label = widget.label
      ..enabled = widget.enabled
      ..showSearchBar = widget.showSearchBar
      ..dropdownType = widget.dropdownType
      ..items = widget.items
      ..showingController = widget.showingController
      ..itemBuilder = widget.itemBuilder
      ..selectedItemBuilder = widget.selectedItemBuilder
      ..selectedItemsController = widget.selectedItemsController
      ..onChanged = widget.onChanged;

    final selectedItems = widget.selectedItems;
    if (selectedItems != null) {
      state.selectedItems = selectedItems;
    }
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.`
  @override
  Widget build(_) {
    return _Base<T, MyoroMultiSelectionDropdownViewModel<T>>(widget.style, _viewModel);
  }
}
