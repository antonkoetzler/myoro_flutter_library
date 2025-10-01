part of 'bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdownV2<T> extends StatefulWidget {
  const MyoroMultiSelectionDropdownV2({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiSelectionDropdownV2<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroMultiSelectionDropdownV2Controller<T>? controller;

  /// Configuration.
  final MyoroMultiSelectionDropdownV2Configuration<T>? configuration;

  @override
  State<MyoroMultiSelectionDropdownV2<T>> createState() => _MyoroMultiSelectionDropdownV2State<T>();
}

final class _MyoroMultiSelectionDropdownV2State<T> extends State<MyoroMultiSelectionDropdownV2<T>> {
  MyoroMultiSelectionDropdownV2Controller<T>? get _controller => widget.controller;
  MyoroMultiSelectionDropdownV2Configuration<T>? get _configuration => widget.configuration;

  // late final MyoroMultiSelectionDropdownV2ViewModel<T> _viewModel;
  MyoroMultiSelectionDropdownV2ViewModel<T>? _localViewModel;
  MyoroMultiSelectionDropdownV2ViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel ??= MyoroMultiSelectionDropdownV2ViewModel(_configuration!));
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
