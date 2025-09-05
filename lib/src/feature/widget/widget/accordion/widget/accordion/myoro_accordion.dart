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
  const MyoroAccordion({super.key, this.controller, this.configuration, this.themeExtension})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroAccordion]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroAccordionController? controller;

  /// Configuration.
  final MyoroAccordionConfiguration? configuration;

  /// Style.
  final MyoroAccordionThemeExtension? themeExtension;

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionController? get _controller => widget.controller;
  MyoroAccordionConfiguration? get _configuration => widget.configuration;
  MyoroAccordionThemeExtension? get _themeExtension => widget.themeExtension;

  MyoroAccordionViewModel? _localViewModel;
  MyoroAccordionViewModel get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel = MyoroAccordionViewModel(_configuration!));
  }

  @override
  void didUpdateWidget(covariant MyoroAccordion oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update the selected item whenever [MyoroAccordion.configuration] is provided.
    final state = _viewModel.state;
    final selectedItem = state.selectedItem;
    if (mounted && _configuration != null && _configuration!.selectedItem != selectedItem) {
      _viewModel.state.selectedItem = _configuration!.selectedItem;
    }
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = _themeExtension ?? context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    final state = _viewModel.state;
    final selectedItemNotifier = state.selectedItemNotifier;
    final scrollController = state.scrollController;
    final configuration = state.configuration;
    final items = configuration.items;
    final thumbVisibility = configuration.thumbVisibility;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSingularThemeExtensionWrapper(
        themeExtension: themeExtension,
        child: ValueListenableBuilder(
          valueListenable: selectedItemNotifier,
          builder: (_, selectedItem, _) {
            return Scrollbar(
              controller: scrollController,
              thumbVisibility: thumbVisibility,
              child: ListView.builder(
                controller: scrollController,
                itemCount: items.length,
                itemBuilder: (_, index) => _Item(
                  item: items.elementAt(index),
                  selectedItem: selectedItem,
                  isLastItem: index == items.length - 1,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
