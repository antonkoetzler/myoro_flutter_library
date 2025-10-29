part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroDropdown<String>(
      style: state.style,
      showingController: state.showingController,
      items: state.items,
      selectedItems: state.selectedItems,
      searchCallback: state.searchCallbackEnabled ? state.searchCallback : null,
      dropdownType: state.dropdownType,
      targetKey: state.targetKey,
      itemBuilder: state.itemBuilder,
      child: MyoroButton(
        onTapDown: (_) => viewModel.toggleDropdown(),
        builder: (context, tapStatusEnum) => Text('Dropdown (${state.showingController.value ? 'Open' : 'Closed'})'),
      ),
    );
  }
}
