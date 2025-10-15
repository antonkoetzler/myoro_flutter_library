part of 'bundle/myoro_accordion_bundle.dart';

/// Multi accordion of MFL.
class MyoroMultiAccordion<T> extends StatefulWidget {
  const MyoroMultiAccordion({super.key, this.style = const MyoroAccordionStyle(), this.controller, this.configuration});

  /// Style.
  final MyoroAccordionStyle style;

  /// Controller.
  final MyoroMultiAccordionController<T>? controller;

  /// Configuration.
  final MyoroMultiAccordionConfiguration<T>? configuration;

  @override
  State<MyoroMultiAccordion<T>> createState() => _MyoroMultiAccordionState<T>();
}

final class _MyoroMultiAccordionState<T> extends State<MyoroMultiAccordion<T>> {
  MyoroMultiAccordionViewModel<T>? _localViewModel;

  @override
  void didUpdateWidget(covariant MyoroMultiAccordion<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final configuration = _configuration;
    if (configuration != null && oldWidget.configuration != null && configuration != oldWidget.configuration) {
      _viewModel.state.configuration = configuration;
    }
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return _Base<T, MyoroMultiAccordionViewModel<T>>(_style, _viewModel);
  }

  MyoroAccordionStyle get _style {
    return widget.style;
  }

  MyoroMultiAccordionController<T>? get _controller {
    return widget.controller;
  }

  MyoroMultiAccordionConfiguration<T>? get _configuration {
    return widget.configuration;
  }

  MyoroMultiAccordionViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel ??= MyoroMultiAccordionViewModel(_configuration!));
  }
}
