part of 'bundle/myoro_accordion_bundle.dart';

/// Accordion of MFL.
class MyoroSingleAccordion extends StatefulWidget {
  const MyoroSingleAccordion({super.key, this.themeExtension, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingleAccordion]: [controller] (x)or [configuration] is required.',
      );

  /// Style.
  final MyoroAccordionThemeExtension? themeExtension;

  /// Controller.
  final MyoroSingleAccordionController? controller;

  /// Configuration.
  final MyoroSingleAccordionConfiguration? configuration;

  @override
  State<MyoroSingleAccordion> createState() => _MyoroSingleAccordionState();
}

final class _MyoroSingleAccordionState extends State<MyoroSingleAccordion> {
  /// Style.
  MyoroAccordionThemeExtension? get _themeExtension {
    return widget.themeExtension;
  }

  /// Controller.
  MyoroSingleAccordionController? get _controller {
    return widget.controller;
  }

  /// Configuration.
  MyoroSingleAccordionConfiguration? get _configuration {
    return widget.configuration;
  }

  MyoroAccordionViewModel? _localViewModel;
  MyoroAccordionViewModel get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ??
        (_localViewModel ??= MyoroAccordionViewModel(_configuration!, {
          ?_configuration!.selectedItem,
        }));
  }

  @override
  void didUpdateWidget(covariant MyoroSingleAccordion oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update configuration.
    _viewModel.state.configuration = _configuration!;

    // Update the selected item whenever [MyoroSingleAccordion.configuration] is provided.
    final state = _viewModel.state;
    final selectedItem = state.selectedItems.isNotEmpty ? state.selectedItems.first : null;
    if (mounted && _configuration != null && _configuration!.selectedItem != selectedItem) {
      _viewModel.state.selectedItems = {?_configuration!.selectedItem};
    }
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return _Base(_themeExtension, _viewModel);
  }
}
