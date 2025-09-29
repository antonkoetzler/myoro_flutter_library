part of 'bundle/myoro_dropdown_bundle.dart';

/// Multi item dropdown.
class MyoroMultiDropdown<T> extends StatelessWidget {
  const MyoroMultiDropdown({
    super.key,
    this.style = const MyoroDropdownStyle(),
    required this.controller,
    required this.child,
  });

  /// Style.
  final MyoroDropdownStyle style;

  /// Controller.
  final MyoroMultiDropdownController<T> controller;

  /// Child.
  final Widget child;

  @override
  Widget build(_) {
    // ignore: invalid_use_of_protected_member
    return _Base(key, controller.viewModel, style, child);
  }
}
