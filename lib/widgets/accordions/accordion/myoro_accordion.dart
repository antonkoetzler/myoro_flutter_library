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

  /// Configuration.
  final MyoroAccordionConfiguration configuration;

  const MyoroAccordion({super.key, this.controller, required this.configuration});

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionConfiguration get _configuration => widget.configuration;

  MyoroAccordionController? _localController;
  MyoroAccordionController get _controller {
    return widget.controller ?? (_localController ??= MyoroAccordionController());
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
        itemCount: _configuration.items.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }

  Widget _itemBuilder(_, int index) {
    final items = _configuration.items;
    return _Item(_controller, item: items[index], isLastItem: index == items.length - 1);
  }
}
