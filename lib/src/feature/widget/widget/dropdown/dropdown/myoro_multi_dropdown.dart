part of 'bundle/myoro_dropdown_bundle.dart';

/// Multi item dropdown.
class MyoroMultiDropdown<T> extends StatefulWidget {
  const MyoroMultiDropdown({
    super.key,
    this.style = const MyoroDropdownStyle(),
    this.controller,
    this.configuration,
    required this.child,
  }) : assert(
         (controller != null) ^ (configuration != null),
         '[MyoroMultiDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
       );

  /// Style.
  final MyoroDropdownStyle style;

  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T>? configuration;

  /// Child.
  final Widget child;

  @override
  State<MyoroMultiDropdown<T>> createState() => _MyoroMultiDropdownState<T>();
}

final class _MyoroMultiDropdownState<T> extends State<MyoroMultiDropdown<T>> {
  Key? get _key => widget.key;
  MyoroDropdownStyle get _style => widget.style;
  MyoroMultiDropdownController<T>? get _controller => widget.controller;
  MyoroMultiDropdownConfiguration<T>? get _configuration => widget.configuration;
  Widget get _child => widget.child;

  MyoroMultiDropdownViewModel<T>? _localViewModel;
  MyoroMultiDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ?? (_localViewModel ??= MyoroMultiDropdownViewModel(_configuration!));
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return _Base(_key, _viewModel, _style, _child);
  }
}
