part of '../bundle/myoro_accordion_bundle.dart';

/// Item within a [MyoroAccordion].
final class _Item extends StatelessWidget {
  final MyoroAccordionItem item;
  final bool isSelected;
  final bool isLastItem;

  const _Item({required this.item, required this.isSelected, required this.isLastItem});

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [_ItemTitleButton(item, isSelected), _ItemContent(item, isSelected), if (!isLastItem) const _Divider()],
    );
  }
}
