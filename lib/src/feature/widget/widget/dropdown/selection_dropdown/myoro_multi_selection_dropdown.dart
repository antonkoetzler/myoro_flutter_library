part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdown<T> extends StatefulWidget {
  const MyoroMultiSelectionDropdown({super.key, this.configuration, this.controller})
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
  MyoroMultiSelectionDropdownViewModel<T>? _localViewModel;
  MyoroMultiSelectionDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroMultiSelectionDropdownViewModel(widget.configuration!));
  }

  @override
  Widget build(_) {
    return MyoroMultiInputDropdown<T>(controller: _viewModel.state.inputDropdownController);
  }
}
