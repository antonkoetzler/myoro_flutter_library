part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Multi item dropdown.
class MyoroMultiSelectionDropdown<T> extends StatefulWidget {
  const MyoroMultiSelectionDropdown({
    super.key,
    this.controller,
    this.configuration,
    this.style = const MyoroSelectionDropdownStyle(),
  }) : assert(
         (controller != null) ^ (configuration != null),
         '[MyoroMultiSelectionDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
       );

  /// Controller.
  final MyoroMultiSelectionDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiSelectionDropdownConfiguration<T>? configuration;

  /// Style.
  final MyoroSelectionDropdownStyle style;

  @override
  State<MyoroMultiSelectionDropdown<T>> createState() => _MyoroMultiSelectionDropdownState<T>();
}

final class _MyoroMultiSelectionDropdownState<T> extends State<MyoroMultiSelectionDropdown<T>> {
  MyoroSelectionDropdownStyle get _style => widget.style;

  MyoroMultiSelectionDropdownViewModel<T>? _localViewModel;
  MyoroMultiSelectionDropdownViewModel<T> get _viewModel {
    return widget.configuration != null
        ? (_localViewModel ??= MyoroMultiSelectionDropdownViewModel(widget.configuration!))
        // ignore: invalid_use_of_protected_member
        : widget.controller!.viewModel;
  }

  @override
  void didUpdateWidget(covariant MyoroMultiSelectionDropdown<T> oldWidget) {
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
