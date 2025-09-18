part of 'bundle/myoro_accordion_bundle.dart';

/// Multi accordion of MFL.
class MyoroMultiAccordion extends StatefulWidget {
  const MyoroMultiAccordion({super.key, this.themeExtension, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiAccordion]: [controller] (x)or [configuration] is required.',
      );

  /// Style.
  final MyoroAccordionThemeExtension? themeExtension;

  /// Controller.
  final MyoroMultiAccordionController? controller;

  /// Configuration.
  final MyoroMultiAccordionConfiguration? configuration;

  @override
  State<MyoroMultiAccordion> createState() => _MyoroMultiAccordionState();
}

final class _MyoroMultiAccordionState extends State<MyoroMultiAccordion> {
  /// Style.
  MyoroAccordionThemeExtension? get _themeExtension {
    return widget.themeExtension;
  }

  /// Controller.
  MyoroMultiAccordionController? get _controller {
    return widget.controller;
  }

  /// Configuration.
  MyoroMultiAccordionConfiguration? get _configuration {
    return widget.configuration;
  }

  MyoroAccordionViewModel? _localViewModel;
  MyoroAccordionViewModel get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ??
        (_localViewModel ??= MyoroAccordionViewModel(
          _configuration!,
          _configuration!.selectedItems,
        ));
  }

  @override
  void didUpdateWidget(covariant MyoroMultiAccordion oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = _configuration!;
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
