import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_divider.dart';
part '_widget/_item.dart';
part '_widget/_item_content.dart';
part '_widget/_item_title_button.dart';
part '_widget/_item_title_button_arrow.dart';

/// Accordion of MFL.
class MyoroAccordion extends StatefulWidget {
  const MyoroAccordion({super.key, required this.controller});

  /// Controller
  final MyoroAccordionController controller;

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionController get _controller => widget.controller;

  late final _viewModel = MyoroAccordionViewModel(_controller);

  @override
  void didUpdateWidget(covariant MyoroAccordion oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.controller = _controller;
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = _viewModel.state;
    final controller = state.controller;
    final scrollController = _viewModel.state.scrollController;

    return InheritedProvider.value(
      value: _viewModel,
      child: ListenableBuilder(
        listenable: state,
        builder: (_, _) {
          return Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: ListView.builder(
              controller: scrollController,
              itemCount: controller.items.length,
              itemBuilder: (_, index) {
                final items = controller.items;
                return _Item(item: items.elementAt(index), isLastItem: index == items.length - 1);
              },
            ),
          );
        },
      ),
    );
  }
}
