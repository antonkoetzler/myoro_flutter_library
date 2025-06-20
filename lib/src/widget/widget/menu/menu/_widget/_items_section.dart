part of '../myoro_menu.dart';

/// Section where the items of the [MyoroMenu] is displayed.
final class _ItemsSection<T> extends StatelessWidget {
  const _ItemsSection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final items = viewModel.state.queriedItems ?? viewModel.state.items;
    final itemWidgets = items.map<Widget>((T item) => _Item(viewModel.state.configuration.itemBuilder(item))).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (items.isNotEmpty) ...[
          Flexible(
            child: ListView.builder(
              controller: viewModel.state.scrollController,
              shrinkWrap: true,
              itemCount: itemWidgets.length,
              itemBuilder: (_, int index) => itemWidgets[index],
            ),
          ),
        ] else ...[
          const Flexible(child: _DialogText('No items to display.')),
        ],
      ],
    );
  }
}
