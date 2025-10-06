part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdown<T> extends StatefulWidget {
  const MyoroMultiSelectionDropdown({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiSelectionDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroMultiSelectionDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiSelectionDropdownConfiguration<T>? configuration;

  @override
  State<MyoroMultiSelectionDropdown<T>> createState() => _MyoroMultiSelectionDropdownState<T>();
}

final class _MyoroMultiSelectionDropdownState<T> extends State<MyoroMultiSelectionDropdown<T>> {
  MyoroMultiSelectionDropdownController<T>? get _controller => widget.controller;
  MyoroMultiSelectionDropdownConfiguration<T>? get _configuration => widget.configuration;

  // late final MyoroMultiSelectionDropdownViewModel<T> _viewModel;
  MyoroMultiSelectionDropdownViewModel<T>? _localViewModel;
  MyoroMultiSelectionDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ??
        (_localViewModel ??= MyoroMultiSelectionDropdownViewModel(_configuration!));
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
