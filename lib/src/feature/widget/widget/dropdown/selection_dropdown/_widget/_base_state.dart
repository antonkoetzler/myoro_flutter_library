part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [State] of [_Base].
final class _BaseState<T> extends State<_Base<T>> {
  /// View model.
  late final MyoroSelectionDropdownViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroSelectionDropdownViewModel<T>(widget._state);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final state = _viewModel.state;
    final showingController = state.showingController;
    final selectedItems = switch (state) {
      MyoroMultiSelectionDropdownState<T>() => state.selectedItems,
      MyoroSingleSelectionDropdownState<T>() => {?state.selectedItem},
    };
    final dropdownType = state.dropdownType;
    final inputKey = state.inputKey;
    final items = state.items;
    final itemBuilder = state.itemBuilder;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget._style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: MyoroDropdown(
        style: widget._style,
        showingController: showingController,
        selectedItems: selectedItems,
        dropdownType: dropdownType,
        targetKey: inputKey,
        items: items,
        itemBuilder: itemBuilder,
        child: _Input<T>(),
      ),
    );
  }
}
