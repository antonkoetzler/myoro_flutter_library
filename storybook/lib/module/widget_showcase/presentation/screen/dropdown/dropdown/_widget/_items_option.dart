part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.items] option of [MyoroDropdownWidgetShowcaseScreen].
final class _ItemsOption extends StatelessWidget {
  const _ItemsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Items:', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            MyoroButton(
              onTapDown: (_, _) => state.items = {'Option 1', 'Option 2', 'Option 3'},
              builder: (context, tapStatusEnum) => const Text('Set 3 Items'),
            ),
            MyoroButton(
              onTapDown: (_, _) => state.items = {'A', 'B', 'C', 'D', 'E', 'F'},
              builder: (context, tapStatusEnum) => const Text('Set 6 Items'),
            ),
            MyoroButton(
              onTapDown: (_, _) => state.items = null,
              builder: (context, tapStatusEnum) => const Text('Set Null (Loading)'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text('Current items: ${state.items?.length ?? 'null'}'),
      ],
    );
  }
}
