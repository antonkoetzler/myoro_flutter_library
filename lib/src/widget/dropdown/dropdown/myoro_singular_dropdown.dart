part of 'myoro_dropdown.dart';

/// Singular item dropdown.
class MyoroSingularDropdown<T> extends StatefulWidget {
  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingularDropdownConfiguration<T> configuration;

  const MyoroSingularDropdown({super.key, this.controller, required this.configuration});

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  MyoroSingularDropdownController<T>? _localController;
  MyoroSingularDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroSingularDropdownController());
  }

  MyoroSingularDropdownConfiguration<T> get _configuration => widget.configuration;

  late final _viewModel = MyoroSingularDropdownViewModel(_configuration, _controller);

  @override
  void didUpdateWidget(covariant MyoroSingularDropdown<T> oldWidget) {
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
