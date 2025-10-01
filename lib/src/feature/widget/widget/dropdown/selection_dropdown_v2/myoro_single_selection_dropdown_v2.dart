part of 'bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdownV2<T> extends StatefulWidget {
  const MyoroSingleSelectionDropdownV2({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingleSelectionDropdownV2<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingleSelectionDropdownV2Controller<T>? controller;

  /// Configuration.
  final MyoroSingleSelectionDropdownV2Configuration<T>? configuration;

  @override
  State<MyoroSingleSelectionDropdownV2<T>> createState() => _MyoroSingleSelectionDropdownV2State<T>();
}

final class _MyoroSingleSelectionDropdownV2State<T> extends State<MyoroSingleSelectionDropdownV2<T>> {
  MyoroSingleSelectionDropdownV2Controller<T>? get _controller => widget.controller;
  MyoroSingleSelectionDropdownV2Configuration<T>? get _configuration => widget.configuration;

  // late final MyoroSingleSelectionDropdownV2ViewModel<T> _viewModel;
  MyoroSingleSelectionDropdownV2ViewModel<T>? _localViewModel;
  MyoroSingleSelectionDropdownV2ViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel ??= MyoroSingleSelectionDropdownV2ViewModel(_configuration!));
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
