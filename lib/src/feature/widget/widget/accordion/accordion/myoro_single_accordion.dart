part of 'bundle/myoro_accordion_bundle.dart';

/// Single accordion of MFL.
class MyoroSingleAccordion<T> extends StatefulWidget {
  const MyoroSingleAccordion({super.key, this.style = const MyoroAccordionStyle(), this.controller, this.configuration});

  /// Style.
  final MyoroAccordionStyle style;

  /// Controller.
  final MyoroSingleAccordionController<T>? controller;

  /// Configuration.
  final MyoroSingleAccordionConfiguration<T>? configuration;

  @override
  State<MyoroSingleAccordion<T>> createState() => _MyoroSingleAccordionState<T>();
}

final class _MyoroSingleAccordionState<T> extends State<MyoroSingleAccordion<T>> {
  MyoroSingleAccordionViewModel<T>? _localViewModel;

  @override
  void didUpdateWidget(covariant MyoroSingleAccordion<T> oldWidget) {
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
    return _Base<T, MyoroSingleAccordionViewModel<T>>(_style, _viewModel);
  }

  MyoroAccordionStyle get _style {
    return widget.style;
  }

  MyoroSingleAccordionController<T>? get _controller {
    return widget.controller;
  }

  MyoroSingleAccordionConfiguration<T>? get _configuration {
    return widget.configuration;
  }

  MyoroSingleAccordionViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel ??= MyoroSingleAccordionViewModel(_configuration!));
  }
}
