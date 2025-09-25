part of 'bundle/myoro_dropdown_bundle.dart';

/// Single item dropdown.
class MyoroSingleDropdown<T> extends StatefulWidget {
  const MyoroSingleDropdown({super.key, this.controller, this.configuration, this.style = const MyoroDropdownStyle()})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingleDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingleDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingleDropdownConfiguration<T>? configuration;

  /// Style.
  final MyoroDropdownStyle style;

  @override
  State<MyoroSingleDropdown<T>> createState() => _MyoroSingleDropdownState<T>();
}

final class _MyoroSingleDropdownState<T> extends State<MyoroSingleDropdown<T>> {
  MyoroDropdownStyle get _style => widget.style;

  MyoroSingleDropdownViewModel<T>? _localViewModel;
  MyoroSingleDropdownViewModel<T> get _viewModel {
    return widget.configuration != null
        ? (_localViewModel ??= MyoroSingleDropdownViewModel(widget.configuration!))
        // ignore: invalid_use_of_protected_member
        : widget.controller!.viewModel;
  }

  @override
  void didUpdateWidget(covariant MyoroSingleDropdown<T> oldWidget) {
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
  Widget build(_) => _Dropdown(_viewModel, _style);
}
