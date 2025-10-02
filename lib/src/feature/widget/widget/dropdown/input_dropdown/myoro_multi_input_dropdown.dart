part of 'bundle/myoro_input_dropdown_bundle.dart';

/// Multi item input dropdown.
class MyoroMultiInputDropdown<T> extends StatefulWidget {
  const MyoroMultiInputDropdown({super.key, this.configuration, this.controller})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiInputDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroMultiInputDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiInputDropdownConfiguration<T>? configuration;

  @override
  State<MyoroMultiInputDropdown<T>> createState() => _MyoroMultiInputDropdownState<T>();
}

final class _MyoroMultiInputDropdownState<T> extends State<MyoroMultiInputDropdown<T>> {
  MyoroMultiInputDropdownViewModel<T>? _localViewModel;
  MyoroMultiInputDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroMultiInputDropdownViewModel(widget.configuration!));
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return _Base(_viewModel);
  }
}
