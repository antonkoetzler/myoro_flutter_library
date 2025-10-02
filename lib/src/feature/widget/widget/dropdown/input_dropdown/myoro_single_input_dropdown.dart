part of 'bundle/myoro_input_dropdown_bundle.dart';

/// Single item input dropdown.
class MyoroSingleInputDropdown<T> extends StatefulWidget {
  const MyoroSingleInputDropdown({super.key, this.configuration, this.controller})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingleInputDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingleInputDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingleInputDropdownConfiguration<T>? configuration;

  @override
  State<MyoroSingleInputDropdown<T>> createState() => _MyoroSingleInputDropdownState<T>();
}

final class _MyoroSingleInputDropdownState<T> extends State<MyoroSingleInputDropdown<T>> {
  MyoroSingleInputDropdownViewModel<T>? _localViewModel;
  MyoroSingleInputDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroSingleInputDropdownViewModel(widget.configuration!));
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
