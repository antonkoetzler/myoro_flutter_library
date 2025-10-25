part of '../bundle/myoro_accordion_bundle.dart';

/// Accordion contents.
final class _Accordion<T> extends StatelessWidget {
  const _Accordion(this._selectedItems);

  final Set<T> _selectedItems;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionViewModel<T>>();
    final state = viewModel.state;
    final scrollController = state.scrollController;
    final thumbVisibility = state.thumbVisibility;
    final items = state.items;

    return Scrollbar(
      controller: scrollController,
      thumbVisibility: thumbVisibility,
      child: ListView.builder(
        controller: scrollController,
        itemCount: items.length,
        itemBuilder: (_, index) {
          final item = items.elementAt(index);
          return _Item<T>(item: item, isSelected: _selectedItems.contains(item), isLastItem: index == items.length - 1);
        },
      ),
    );
  }
}
