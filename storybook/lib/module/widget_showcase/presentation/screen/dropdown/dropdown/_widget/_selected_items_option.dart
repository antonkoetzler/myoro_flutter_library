part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.selectedItems] option of [MyoroDropdownWidgetShowcaseScreen].
final class _SelectedItemsOption extends StatelessWidget {
  const _SelectedItemsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Selected Items:', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            MyoroButton(
              onTapDown: (_) => state.selectedItems = {'Option 1'},
              builder: (context, tapStatusEnum) => const Text('Select Option 1'),
            ),
            MyoroButton(
              onTapDown: (_) => state.selectedItems = {'Option 2', 'Option 3'},
              builder: (context, tapStatusEnum) => const Text('Select Multiple'),
            ),
            MyoroButton(
              onTapDown: (_) => state.selectedItems = {},
              builder: (context, tapStatusEnum) => const Text('Clear Selection'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text('Selected: ${state.selectedItems.join(', ')}'),
      ],
    );
  }
}
