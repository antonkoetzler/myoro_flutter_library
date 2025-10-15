part of '../bundle/myoro_accordion_bundle.dart';

/// Base accordion [Widget].
final class _Base<T, V extends MyoroAccordionViewModel<T>> extends StatelessWidget {
  const _Base(this._style, this._viewModel);

  /// Style.
  final MyoroAccordionStyle _style;

  /// View model.
  final V _viewModel;

  @override
  Widget build(BuildContext context) {
    final state = _viewModel.state;
    final selectedItemsController = state.selectedItemsController;
    final scrollController = state.scrollController;
    final configuration = state.configuration;
    final items = configuration.items;
    final thumbVisibility = configuration.thumbVisibility;

    if (items.isEmpty) return const SizedBox.shrink();

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _style),
      ],
      child: ValueListenableBuilder(
        valueListenable: selectedItemsController,
        builder: (_, selectedItems, _) {
          return Scrollbar(
            controller: scrollController,
            thumbVisibility: thumbVisibility,
            child: ListView.builder(
              controller: scrollController,
              itemCount: items.length,
              itemBuilder: (_, index) {
                final item = items.elementAt(index);
                return _Item<T, V>(item: item, isSelected: selectedItems.contains(item), isLastItem: index == items.length - 1);
              },
            ),
          );
        },
      ),
    );
  }
}
