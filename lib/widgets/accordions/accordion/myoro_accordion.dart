import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widgets/_divider.dart';
part '_widgets/_item.dart';
part '_widgets/_item_content.dart';
part '_widgets/_item_title_button.dart';
part '_widgets/_item_title_button_arrow.dart';

/// Accordion of MFL.
class MyoroAccordion extends StatefulWidget {
  /// View model.
  final MyoroAccordionController controller;

  const MyoroAccordion({super.key, required this.controller});

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionController get _controller => widget.controller;

  late final _viewModel = MyoroAccordionViewModel(_controller);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = _viewModel.state.scrollController;

    return InheritedProvider.value(
      value: _viewModel,
      child: Scrollbar(
        controller: scrollController,
        child: ListView.builder(
          controller: scrollController,
          itemCount: _controller.state.items.length,
          itemBuilder: _itemBuilder,
        ),
      ),
    );
  }

  Widget _itemBuilder(_, int index) {
    final items = _viewModel.controller.state.items;
    return _Item(item: items[index], isLastItem: index == items.length - 1);
  }
}
