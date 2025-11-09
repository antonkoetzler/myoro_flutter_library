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
    final dropdownType = state.dropdownType;
    final inputKey = state.inputKey;
    final items = state.items;
    final itemBuilder = state.itemBuilder;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget._style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: ValueListenableBuilder(
        valueListenable: switch (state) {
          MyoroMultiSelectionDropdownState<T>() => state.selectedItemsController,
          MyoroSingleSelectionDropdownState<T>() => state.selectedItemController,
        },
        builder: (_, _, _) {
          return MyoroDropdown(
            style: widget._style,
            showingController: showingController,
            selectedItems: switch (state) {
              MyoroMultiSelectionDropdownState<T>() => state.selectedItems,
              MyoroSingleSelectionDropdownState<T>() => {?state.selectedItem},
            },
            dropdownType: dropdownType,
            targetKey: inputKey,
            items: items,
            itemBuilder: itemBuilder,
            child: _Input<T>(),
          );
        },
      ),
    );
  }
}
