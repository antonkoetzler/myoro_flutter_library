part of 'bundle/myoro_dropdown_bundle.dart';

/// Single item dropdown.
class MyoroSingleDropdown<T> extends StatefulWidget {
  const MyoroSingleDropdown({
    super.key,
    this.style = const MyoroDropdownStyle(),
    this.controller,
    this.configuration,
    required this.child,
  }) : assert(
         (controller != null) ^ (configuration != null),
         '[MyoroSingleDropdown<$T>]: [controller] (x)or [configuration] must be provided.',
       );

  /// Style.
  final MyoroDropdownStyle style;

  /// Controller.
  final MyoroSingleDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingleDropdownConfiguration<T>? configuration;

  /// Child.
  final Widget child;

  @override
  State<MyoroSingleDropdown<T>> createState() => _MyoroSingleDropdownState<T>();
}

final class _MyoroSingleDropdownState<T> extends State<MyoroSingleDropdown<T>> {
  Key? get _key => widget.key;
  MyoroDropdownStyle get _style => widget.style;
  MyoroSingleDropdownController<T>? get _controller => widget.controller;
  MyoroSingleDropdownConfiguration<T>? get _configuration => widget.configuration;
  Widget get _child => widget.child;

  MyoroSingleDropdownViewModel<T>? _localViewModel;
  MyoroSingleDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return _controller?.viewModel ??
        (_localViewModel ??= MyoroSingleDropdownViewModel(_configuration!));
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
