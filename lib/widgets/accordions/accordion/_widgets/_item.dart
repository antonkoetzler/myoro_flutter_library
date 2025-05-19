part of '../myoro_accordion.dart';

/// Item within a [MyoroAccordion].
final class _Item extends StatelessWidget {
  final MyoroAccordionController _controller;
  final MyoroAccordionItem item;
  final bool isLastItem;

  const _Item(this._controller, {required this.item, required this.isLastItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ItemTitleButton(item, _controller),
        ValueListenableBuilder(valueListenable: _controller._expandedItemNotifier, builder: _builder),
        if (!isLastItem) const _Divider(),
      ],
    );
  }

  Widget _builder(BuildContext context, MyoroAccordionItem? expandedItem, __) {
    return _ItemContent(item, expandedItem);
  }
}
