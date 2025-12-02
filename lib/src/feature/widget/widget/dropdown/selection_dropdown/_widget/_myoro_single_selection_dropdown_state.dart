part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [State] of [MyoroSingleSelectionDropdown].
final class _MyoroSingleSelectionDropdownState<T> extends State<MyoroSingleSelectionDropdown<T>> {
  /// View model.
  late final MyoroSingleSelectionDropdownViewModel<T> _viewModel;

  /// Init state function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroSingleSelectionDropdownViewModel(
      widget.label,
      widget.enabled,
      widget.showSearchBar,
      widget.dropdownType,
      widget.items,
      widget.showingController,
      widget.itemBuilder,
      widget.selectedItemBuilder,
      widget.selectedItem,
      widget.selectedItemController,
      widget.allowDeselection,
      widget.onChanged,
    );
  }

  /// Did update widget function.
  @override
  void didUpdateWidget(MyoroSingleSelectionDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state
      ..label = widget.label
      ..enabled = widget.enabled
      ..showSearchBar = widget.showSearchBar
      ..dropdownType = widget.dropdownType
      ..items = widget.items
      ..showingController = widget.showingController
      ..itemBuilder = widget.itemBuilder
      ..selectedItemBuilder = widget.selectedItemBuilder
      ..selectedItem = widget.selectedItem
      ..selectedItemController = widget.selectedItemController
      ..allowDeselection = widget.allowDeselection
      ..onChanged = widget.onChanged;
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(_) {
    return _Base<T, MyoroSingleSelectionDropdownViewModel<T>>(widget.style, _viewModel);
  }
}
