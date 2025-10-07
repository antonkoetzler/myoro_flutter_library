part of '../bundle/myoro_menu_bundle.dart';

/// Section where the items of the [MyoroMenu] is displayed.
final class _ItemsSection<T, C extends _C<T>> extends StatelessWidget {
  const _ItemsSection();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuViewModel<T, C>>();
    final state = viewModel.state;
    final queriedItemsController = state.queriedItemsController;
    final selectedItemsController = state.selectedItemsController;
    final configuration = state.configuration;
    final itemBuilder = configuration.itemBuilder;

    return ValueListenableBuilder(
      valueListenable: queriedItemsController,
      builder: (_, queriedItems, _) {
        final items = queriedItems ?? viewModel.state.items;

        return ValueListenableBuilder(
          valueListenable: selectedItemsController,
          builder: (_, selectedItems, _) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (items.isNotEmpty) ...[
                  Flexible(
                    child: Scrollbar(
                      controller: viewModel.state.scrollController,
                      thumbVisibility: true,
                      child: ListView.builder(
                        controller: viewModel.state.scrollController,
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (_, index) {
                          final item = items.elementAt(index);
                          return _Item<T, C>(item, itemBuilder(item), selectedItems);
                        },
                      ),
                    ),
                  ),
                ] else ...[
                  const Flexible(child: _DialogText('No items to display.')),
                ],
              ],
            );
          },
        );
      },
    );
  }
}
