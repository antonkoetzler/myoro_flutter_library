part of 'myoro_dropdown.dart';

/// Singular item dropdown.
class MyoroSingularDropdown<T> extends MyoroStatefulWidget {
  const MyoroSingularDropdown({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingularDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingularDropdownConfiguration<T>? configuration;

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  MyoroSingularDropdownViewModel<T>? _localViewModel;
  MyoroSingularDropdownViewModel<T> get _viewModel {
    return widget.configuration != null
        ? (_localViewModel ??= MyoroSingularDropdownViewModel(widget.configuration!))
        // ignore: invalid_use_of_protected_member
        : widget.controller!.viewModel;
  }

  @override
  void didUpdateWidget(covariant MyoroSingularDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != null) {
      if (widget.configuration != _viewModel.state.configuration) {
        _viewModel.state.configuration = widget.configuration!;
      }
    }
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) => _Dropdown(_viewModel);
}
