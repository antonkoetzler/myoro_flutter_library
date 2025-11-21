part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.items] option of [MyoroMenuWidgetShowcaseScreen].
final class _ItemsOption extends StatelessWidget {
  const _ItemsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();
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
              onTapDown: (_, _) => state.items = {'Item A', 'Item B', 'Item C'},
              builder: (context, tapStatusEnum) => const Text('Set 3 Items'),
            ),
            MyoroButton(
              onTapDown: (_, _) => state.items = {'X', 'Y', 'Z', 'W', 'V', 'U'},
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
