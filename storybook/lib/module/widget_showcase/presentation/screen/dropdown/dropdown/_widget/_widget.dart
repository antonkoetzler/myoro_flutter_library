part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final selectedItemsController = state.selectedItemsController;
    final showingController = state.showingController;
    final items = state.items;
    final searchCallback = state.searchCallbackEnabled ? state.searchCallback : null;
    final dropdownType = state.dropdownType;
    final targetKey = state.targetKey;

    return ValueListenableBuilder(
      valueListenable: selectedItemsController,
      builder: (_, selectedItems, _) {
        return MyoroDropdown<String>(
          style: state.style,
          showingController: showingController,
          items: items,
          selectedItems: selectedItems,
          searchCallback: searchCallback,
          dropdownType: dropdownType,
          targetKey: targetKey,
          itemBuilder: (item) {
            return MyoroMenuButtonItem(
              builder: (context, tapStatusEnum) => Text(item),
              onTapUp: (_) => state.selectedItems = {if (!state.selectedItems.contains(item)) item},
            );
          },
          child: GestureDetector(
            onTapUp: (_) => viewModel.toggleDropdown(),
            child: const Text('Click to open the dropdown'),
          ),
        );
      },
    );
  }
}
