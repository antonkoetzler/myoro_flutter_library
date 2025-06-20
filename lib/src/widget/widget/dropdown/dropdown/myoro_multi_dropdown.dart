part of 'myoro_dropdown.dart';

/// Multi item dropdown.
final class MyoroMultiDropdown<T> extends StatefulWidget {
  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T> configuration;

  const MyoroMultiDropdown({super.key, this.controller, required this.configuration});

  @override
  State<MyoroMultiDropdown<T>> createState() => _MyoroMultiDropdownState<T>();
}

final class _MyoroMultiDropdownState<T> extends State<MyoroMultiDropdown<T>> {
  MyoroMultiDropdownController<T>? _localController;
  MyoroMultiDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroMultiDropdownController());
  }

  MyoroMultiDropdownConfiguration<T> get _configuration => widget.configuration;

  late final _viewModel = MyoroMultiDropdownViewModel(_configuration, _controller);

  @override
  void didUpdateWidget(covariant MyoroMultiDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_configuration != _viewModel.state.configuration) {
      _viewModel.state.configuration = _configuration;
    }
  }

  @override
  void dispose() {
    _localController?.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _Dropdown(_viewModel);
}
