part of '../widget/myoro_dropdown.dart';

/// Menu widget.
final class _Menu<T> extends StatelessWidget {
  const _Menu();

  @override
  Widget build(context) {
    final style = context.watch<MyoroDropdownStyle>();
    final viewModel = context.read<MyoroDropdownViewModel<T>>();
    final state = viewModel.state;
    final items = state.items;
    final itemBuilder = state.itemBuilder;
    final selectedItems = state.selectedItems;
    final searchCallback = state.searchCallback;
    final dropdownType = state.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    return MyoroMenu(
      style: style.copyWith(
        border: isModal || isBottomSheet ? Border.all(width: 0) : null,
        borderProvided: isModal || isBottomSheet,
      ),
      items: items,
      selectedItems: selectedItems,
      searchCallback: searchCallback,
      itemBuilder: itemBuilder,
    );
  }
}
