part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Base [Widget] of a selection dropdown.
final class _Base<T, V extends _ViewModel<T>> extends StatelessWidget {
  /// Default constructor.
  const _Base(this._style, this._viewModel);

  /// Style.
  final MyoroDropdownStyle _style;

  /// State.
  final V _viewModel;

  /// Build function.
  @override
  Widget build(context) {
    final state = _viewModel.state;
    final showingController = state.showingController;
    final dropdownType = state.dropdownType;
    final inputKey = state.inputKey;
    final itemBuilder = _viewModel.itemBuilder;
    final showSearchBar = state.showSearchBar;
    final items = state.items;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: ValueListenableBuilder(
        valueListenable: switch (state) {
          MyoroMultiSelectionDropdownState<T>() => state.selectedItemsController,
          MyoroSingleSelectionDropdownState<T>() => state.selectedItemController,
        },
        builder: (_, selectedItems, _) {
          return MyoroDropdown(
            style: _style,
            showSearchBar: showSearchBar,
            showingController: showingController,
            selectedItems: switch (state) {
              MyoroMultiSelectionDropdownState<T>() => state.selectedItems,
              MyoroSingleSelectionDropdownState<T>() => {?state.selectedItem},
            },
            dropdownType: dropdownType,
            targetKey: inputKey,
            items: items,
            itemBuilder: itemBuilder,
            child: _Input<T, V>(),
          );
        },
      ),
    );
  }
}
