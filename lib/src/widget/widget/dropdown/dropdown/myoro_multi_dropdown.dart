part of 'myoro_dropdown.dart';

/// Multi item dropdown.
final class MyoroMultiDropdown<T> extends MyoroStatefulWidget<MyoroMultiDropdownViewModel<T>> {
  const MyoroMultiDropdown({super.key, super.injectedViewModel, this.controller, required this.configuration});

  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T> configuration;

  @override
  State<MyoroMultiDropdown<T>> createState() => _MyoroMultiDropdownState<T>();
}

final class _MyoroMultiDropdownState<T> extends State<MyoroMultiDropdown<T>> {
  MyoroMultiDropdownController<T>? _localController;
  MyoroMultiDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroMultiDropdownController());
  }

  // late final _viewModel = MyoroMultiDropdownViewModel(_configuration, _controller);
  MyoroMultiDropdownViewModel? _localViewModel;
  MyoroMultiDropdownViewModel get _viewModel {
    return widget.injectedViewModel ??
        (_localViewModel ??= MyoroMultiDropdownViewModel(widget.configuration, _controller));
  }

  @override
  void didUpdateWidget(covariant MyoroMultiDropdown<T> oldWidget) {
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
