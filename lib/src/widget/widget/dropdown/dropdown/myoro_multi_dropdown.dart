part of 'myoro_dropdown.dart';

/// Multi item dropdown.
class MyoroMultiDropdown<T> extends MyoroStatefulWidget {
  const MyoroMultiDropdown({super.key, super.createViewModel, this.controller, required this.configuration});

  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T> configuration;

  @override
  State<MyoroMultiDropdown<T>> createState() => _MyoroMultiDropdownState<T>();
}

final class _MyoroMultiDropdownState<T> extends State<MyoroMultiDropdown<T>> {
  bool get _createViewModel => widget.createViewModel;

  MyoroMultiDropdownController<T>? _localController;
  MyoroMultiDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroMultiDropdownController());
  }

  MyoroMultiDropdownViewModel<T>? _localViewModel;
  MyoroMultiDropdownViewModel<T> get _viewModel {
    final viewModel =
        _createViewModel
            ? (_localViewModel ??= MyoroMultiDropdownViewModel())
            : context.read<MyoroMultiDropdownViewModel<T>>();
    return viewModel..initialize(widget.configuration, _controller);
  }

  @override
  void didUpdateWidget(covariant MyoroMultiDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != null) {
      _localController?.dispose();
      _localController = null;
    }
    _viewModel.controller = _controller;
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
