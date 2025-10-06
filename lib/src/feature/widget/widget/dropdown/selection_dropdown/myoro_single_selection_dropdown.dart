part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends StatefulWidget {
  const MyoroSingleSelectionDropdown({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingleSelectionDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingleSelectionDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingleSelectionDropdownConfiguration<T>? configuration;

  @override
  State<MyoroSingleSelectionDropdown<T>> createState() => _MyoroSingleSelectionDropdownState<T>();
}

final class _MyoroSingleSelectionDropdownState<T> extends State<MyoroSingleSelectionDropdown<T>> {
  MyoroSingleSelectionDropdownController<T>? get _controller => widget.controller;
  MyoroSingleSelectionDropdownConfiguration<T>? get _configuration => widget.configuration;

  // late final MyoroSingleSelectionDropdownViewModel<T> _viewModel;
  MyoroSingleSelectionDropdownViewModel<T>? _localViewModel;
  MyoroSingleSelectionDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ??
        (_localViewModel ??= MyoroSingleSelectionDropdownViewModel(_configuration!));
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return _Base(_viewModel);
  }
}
