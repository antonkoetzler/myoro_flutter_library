part of 'bundle/myoro_dropdown_bundle.dart';

/// Single item dropdown.
class MyoroSingleDropdown<T> extends StatelessWidget {
  const MyoroSingleDropdown({
    super.key,
    this.style = const MyoroDropdownStyle(),
    required this.controller,
    required this.child,
  });

  /// Style.
  final MyoroDropdownStyle style;

  /// Controller.
  final MyoroSingleDropdownController<T> controller;

  /// Child.
  final Widget child;

  @override
  Widget build(_) {
    // ignore: invalid_use_of_protected_member
    return _Base(key, controller.viewModel, style, child);
  }
}
