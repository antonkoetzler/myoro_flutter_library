part of 'myoro_dropdown.dart';

/// Singular item dropdown.
class MyoroSingularDropdown<T> extends MyoroStatefulWidget<MyoroSingularDropdownViewModel<T>> {
  const MyoroSingularDropdown({super.key, super.injectedViewModel, this.controller, required this.configuration});

  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingularDropdownConfiguration<T> configuration;

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  MyoroSingularDropdownController<T>? _localController;
  MyoroSingularDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroSingularDropdownController());
  }

  MyoroSingularDropdownViewModel? _localViewModel;
  MyoroSingularDropdownViewModel get _viewModel {
    return widget.injectedViewModel ??
        (_localViewModel ??= MyoroSingularDropdownViewModel(widget.configuration, _controller));
  }

  @override
  void didUpdateWidget(covariant MyoroSingularDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != _viewModel.state.configuration) {
      _viewModel.state.configuration = widget.configuration;
    }
  }

  @override
  void dispose() {
    _localController?.dispose();
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _Dropdown(_viewModel);
}
