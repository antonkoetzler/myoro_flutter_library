part of '../bundle/myoro_field_button_bundle.dart';

/// Dropdown of a filter button.
final class _Dropdown<T> extends StatelessWidget {
  /// Default constructor.
  const _Dropdown();

  /// Build function.
  @override
  Widget build(context) {
    final style = context.watch<MyoroFilterButtonStyle>();

    final viewModel = context.read<MyoroFilterButtonViewModel<T>>();
    final isItemSelected = viewModel.isItemSelected;
    final state = viewModel.state;
    final dropdownType = state.dropdownType;
    final showingController = state.showingController;
    final items = state.items;
    final itemLabelBuilder = state.itemLabelBuilder;

    return ValueListenableBuilder(
      valueListenable: switch (state) {
        MyoroCheckboxFilterButtonState<T>() => state.temporarilySelectedItemsController,
        MyoroRadioFilterButtonState<T>() => state.temporarilySelectedItemController,
      },
      builder: (_, _, _) {
        final temporarilySelectedItems = switch (state) {
          MyoroCheckboxFilterButtonState<T>() => state.temporarilySelectedItems,
          MyoroRadioFilterButtonState<T>() => {?state.temporarilySelectedItem},
        };

        return MyoroDropdown(
          selectedItems: temporarilySelectedItems,
          dropdownType: dropdownType,
          showingController: showingController,
          itemBuilder: (_, item) {
            return switch (state) {
              MyoroCheckboxFilterButtonState<T>() => MyoroMenuCheckboxItem(
                label: itemLabelBuilder(item),
                value: isItemSelected(item),
                onChanged: (value) => viewModel.onItemTapped(item),
              ),
              MyoroRadioFilterButtonState<T>() => MyoroMenuRadioItem(
                label: itemLabelBuilder(item),
                value: isItemSelected(item),
                onChanged: (value) => viewModel.onItemTapped(item),
              ),
            };
          },
          items: items,
          footer: MultiProvider(
            providers: [
              Provider.value(value: style),
              Provider.value(value: viewModel),
            ],
            child: _ActionButtons<T>(temporarilySelectedItems),
          ),
          child: _Button<T>(),
        );
      },
    );
  }
}
