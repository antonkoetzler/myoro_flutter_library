part of '../widget/myoro_menu.dart';

/// Section where the items of the [MyoroMenu] is displayed.
final class _ItemsSection<T> extends StatelessWidget {
  const _ItemsSection();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final state = viewModel.state;
    final items = state.items;
    final itemBuilder = state.itemBuilder;
    final scrollController = state.scrollController;

    return items!.isNotEmpty
        ? Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (_, index) {
                final item = items.elementAt(index);
                return _Item<T>(item, itemBuilder(item));
              },
            ),
          )
        : const Flexible(child: _DialogText('No items to display.'));
  }
}
