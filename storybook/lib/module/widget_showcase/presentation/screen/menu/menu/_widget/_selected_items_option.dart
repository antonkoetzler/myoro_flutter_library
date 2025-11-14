part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.selectedItems] option of [MyoroMenuWidgetShowcaseScreen].
final class _SelectedItemsOption extends StatelessWidget {
  const _SelectedItemsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(localization.storybookMenuSelectedItemsLabel, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            MyoroButton(
              onTapDown: (_) => state.selectedItems = {'Menu Item 1'},
              builder: (context, tapStatusEnum) => Text(localization.storybookMenuSelectItem1ButtonText),
            ),
            MyoroButton(
              onTapDown: (_) => state.selectedItems = {'Menu Item 2', 'Menu Item 3'},
              builder: (context, tapStatusEnum) => Text(localization.storybookMenuSelectMultipleButtonText),
            ),
            MyoroButton(
              onTapDown: (_) => state.selectedItems = {},
              builder: (context, tapStatusEnum) => Text(localization.storybookMenuClearSelectionButtonText),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text('${localization.storybookMenuSelectedLabel} ${state.selectedItems.join(', ')}'),
      ],
    );
  }
}
