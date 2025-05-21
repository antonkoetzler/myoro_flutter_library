import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_divider.dart';
part '_widgets/_item.dart';
part '_widgets/_item_content.dart';
part '_widgets/_item_title_button.dart';
part '_widgets/_item_title_button_arrow.dart';

/// Accordion of MFL.
class MyoroAccordion extends StatefulWidget {
  /// Controller.
  final MyoroAccordionController? controller;

  /// Configuration.
  final MyoroAccordionConfiguration configuration;

  const MyoroAccordion({super.key, this.controller, required this.configuration});

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionConfiguration get _configuration => widget.configuration;
  List<MyoroAccordionItem> get _items => _configuration.items;

  MyoroAccordionController? _localController;
  MyoroAccordionController get _controller {
    return widget.controller ?? (_localController ??= MyoroAccordionController());
  }

  ScrollController get _scrollController => _controller.scrollController;

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: ListView.builder(controller: _scrollController, itemCount: _items.length, itemBuilder: _itemBuilder),
    );
  }

  Widget _itemBuilder(_, int index) {
    return _Item(_controller, item: _items[index], isLastItem: index == _items.length - 1);
  }
}
