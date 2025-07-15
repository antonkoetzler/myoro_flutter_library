part of 'myoro_dropdown.dart';

/// Singular item dropdown.
class MyoroSingularDropdown<T> extends MyoroStatefulWidget {
  const MyoroSingularDropdown({super.key, super.createViewModel, this.controller, required this.configuration});

  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingularDropdownConfiguration<T> configuration;

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  bool get _createViewModel => widget.createViewModel;

  MyoroSingularDropdownController<T>? _localController;
  MyoroSingularDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroSingularDropdownController());
  }

  MyoroSingularDropdownViewModel<T>? _localViewModel;
  MyoroSingularDropdownViewModel<T> get _viewModel {
    final viewModel =
        _createViewModel
            ? (_localViewModel ??= MyoroSingularDropdownViewModel())
            : context.read<MyoroSingularDropdownViewModel<T>>();
    return viewModel..initialize(widget.configuration, _controller);
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
  Widget build(_) => _Dropdown(_viewModel);
}
