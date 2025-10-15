part of '../bundle/myoro_accordion_bundle.dart';

/// Item within an accordion.
final class _Item<T, V extends MyoroAccordionViewModel<T>> extends StatelessWidget {
  final T item;
  final bool isSelected;
  final bool isLastItem;

  const _Item({required this.item, required this.isSelected, required this.isLastItem});

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [_ItemTitleButton<T, V>(item, isSelected), _ItemContent<T, V>(item, isSelected), if (!isLastItem) const MyoroBasicDivider(Axis.horizontal)],
    );
  }
}
