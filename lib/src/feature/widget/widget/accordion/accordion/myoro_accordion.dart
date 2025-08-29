import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_divider.dart';
part '_widget/_item.dart';
part '_widget/_item_content.dart';
part '_widget/_item_title_button.dart';
part '_widget/_item_title_button_arrow.dart';

/// Accordion of MFL.
class MyoroAccordion extends MyoroStatefulWidget {
  const MyoroAccordion({super.key, required this.controller});

  /// Controller.
  final MyoroAccordionController controller;

  /// Style.
  final MyoroAccordionStyle

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  bool get _createViewModel => widget.createViewModel;

  MyoroAccordionViewModel? _localViewModel;
  MyoroAccordionViewModel get _viewModel {
    final viewModel = _localViewModel ??= MyoroAccordionViewModel();
    return viewModel..state.controller = widget.controller;
  }

  @override
  void didUpdateWidget(covariant MyoroAccordion oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.controller = widget.controller;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final state = _viewModel.state;
    final controller = state.controller;
    final scrollController = _viewModel.state.scrollController;

    final child = ListenableBuilder(
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
    );

    return _createViewModel ? InheritedProvider.value(value: _viewModel, child: child) : child;
  }
}
