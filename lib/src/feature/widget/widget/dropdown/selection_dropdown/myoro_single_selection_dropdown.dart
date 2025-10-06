part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends StatefulWidget {
  const MyoroSingleSelectionDropdown({super.key, this.configuration, this.controller})
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
  MyoroSingleSelectionDropdownViewModel<T>? _localViewModel;
  MyoroSingleSelectionDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroSingleSelectionDropdownViewModel(widget.configuration!));
  }

  @override
  Widget build(_) {
    return MyoroSingleInputDropdown<T>(controller: _viewModel.state.inputDropdownController);
  }
}
