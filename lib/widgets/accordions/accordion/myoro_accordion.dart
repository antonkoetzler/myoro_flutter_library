import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_divider.dart';
part '_widgets/_item.dart';
part '_widgets/_item_content.dart';
part '_widgets/_item_title_button.dart';
part '_widgets/_item_title_button_arrow.dart';

/// Accordion of MFL.
class MyoroAccordion extends StatefulWidget {
  /// View model.
  final MyoroAccordionController? controller;

  /// Items of the [MyoroAccordion].
  final List<MyoroAccordionItem> items;

  const MyoroAccordion({super.key, this.controller, this.items = const []})
    : assert(
        (controller != null) ^ (items.length > 0),
        '[MyoroAccordion]: [controller] (x)or [items] that is non-empty must be provided.',
      );

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionController? _localController;
  MyoroAccordionController get _controller {
    return widget.controller ?? (_localController ??= MyoroAccordionController(items: widget.items));
  }

  late final _viewModel = MyoroAccordionViewModel(_controller);

  @override
  void dispose() {
    _localController?.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = _viewModel.state.scrollController;

    return Scrollbar(
      controller: scrollController,
      child: ListView.builder(
        controller: scrollController,
        itemCount: _controller.state.items.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }

  Widget _itemBuilder(_, int index) {
    final items = _controller.state.items;
    return _Item(_controller, item: items[index], isLastItem: index == items.length - 1);
  }
}
