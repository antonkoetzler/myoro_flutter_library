part of '../myoro_accordion.dart';

/// Item within a [MyoroAccordion].
final class _Item extends StatelessWidget {
  final MyoroAccordionItem item;
  final MyoroAccordionItem? selectedItem;
  final bool isLastItem;

  const _Item({required this.item, required this.selectedItem, required this.isLastItem});

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ItemTitleButton(item, selectedItem),
        _ItemContent(item, selectedItem),
        if (!isLastItem) const _Divider(),
      ],
    );
  }
}
