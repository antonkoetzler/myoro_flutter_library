part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Base [Widget] of a selection dropdown.
final class _Base<T> extends StatelessWidget {
  const _Base(this._style, this._state);

  final MyoroMenuStyle _style;
  final MyoroSelectionDropdownState<T> _state;

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _style),
        InheritedProvider(create: (_) => MyoroSelectionDropdownViewModel<T>(_state), dispose: (_, v) => v.dispose()),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroSelectionDropdownViewModel<T>>();
          final state = viewModel.state;
          final showingController = state.showingController;
          final selectedItems = switch (state) {
            MyoroMultiSelectionDropdownState<T>() => state.selectedItems,
            MyoroSingleSelectionDropdownState<T>() => {?state.selectedItem},
          };
          final dropdownType = state.dropdownType;
          final inputKey = state.inputKey;
          final items = state.items;
          final itemBuilder = state.itemBuilder;

          return MyoroDropdown(
            menuStyle: _style,
            showingController: showingController,
            selectedItems: selectedItems,
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
