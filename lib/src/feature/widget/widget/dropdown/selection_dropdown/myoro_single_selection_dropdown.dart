part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Single item dropdown.
class MyoroSingleSelectionDropdown<T> extends StatefulWidget {
  const MyoroSingleSelectionDropdown({
    super.key,
    this.controller,
    this.configuration,
    this.style = const MyoroSelectionDropdownStyle(),
  }) : assert(
         (controller != null) ^ (configuration != null),
         '[MyoroSingleSelectionDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
       );

  /// Controller.
  final MyoroSingleSelectionDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingleSelectionDropdownConfiguration<T>? configuration;

  /// Style.
  final MyoroSelectionDropdownStyle style;

  @override
  State<MyoroSingleSelectionDropdown<T>> createState() => _MyoroSingleSelectionDropdownState<T>();
}

final class _MyoroSingleSelectionDropdownState<T> extends State<MyoroSingleSelectionDropdown<T>> {
  MyoroSelectionDropdownStyle get _style => widget.style;

  MyoroSingleSelectionDropdownViewModel<T>? _localViewModel;
  MyoroSingleSelectionDropdownViewModel<T> get _viewModel {
    return widget.configuration != null
        ? (_localViewModel ??= MyoroSingleSelectionDropdownViewModel(widget.configuration!))
        // ignore: invalid_use_of_protected_member
        : widget.controller!.viewModel;
  }

  @override
  void didUpdateWidget(covariant MyoroSingleSelectionDropdown<T> oldWidget) {
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
