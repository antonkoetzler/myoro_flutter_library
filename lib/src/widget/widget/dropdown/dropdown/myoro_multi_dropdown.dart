part of 'myoro_dropdown.dart';

/// Multi item dropdown.
class MyoroMultiDropdown<T> extends MyoroStatefulWidget {
  const MyoroMultiDropdown({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T>? configuration;

  @override
  State<MyoroMultiDropdown<T>> createState() => _MyoroMultiDropdownState<T>();
}

final class _MyoroMultiDropdownState<T> extends State<MyoroMultiDropdown<T>> {
  MyoroMultiDropdownViewModel<T>? _localViewModel;
  MyoroMultiDropdownViewModel<T> get _viewModel {
    return widget.configuration != null
        ? (_localViewModel ??= MyoroMultiDropdownViewModel(widget.configuration!))
        // ignore: invalid_use_of_protected_member
        : widget.controller!.viewModel;
  }

  @override
  void didUpdateWidget(covariant MyoroMultiDropdown<T> oldWidget) {
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
