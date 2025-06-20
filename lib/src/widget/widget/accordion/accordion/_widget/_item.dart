part of '../myoro_accordion.dart';

/// Item within a [MyoroAccordion].
final class _Item extends StatelessWidget {
  final MyoroAccordionItem item;
  final bool isLastItem;

  const _Item({required this.item, required this.isLastItem});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAccordionViewModel>();
    final controller = viewModel.state.controller;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ItemTitleButton(item),
        ValueListenableBuilder(
          valueListenable: controller,
          builder: (_, MyoroAccordionItem? expandedItem, _) => _ItemContent(item, expandedItem),
        ),
        if (!isLastItem) const _Divider(),
      ],
    );
  }
}
