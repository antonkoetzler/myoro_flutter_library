part of 'bundle/myoro_dropdown_bundle.dart';

/// Multi item dropdown.
class MyoroMultiDropdown<T> extends StatelessWidget {
  const MyoroMultiDropdown({
    super.key,
    required this.controller,
    this.menuStyle = const MyoroMenuStyle(),
    required this.child,
  });

  /// Controller.
  final MyoroMultiDropdownController<T> controller;

  /// Style of the menu.
  final MyoroMenuStyle menuStyle;

  /// Child.
  final Widget child;

  @override
  Widget build(_) {
    // ignore: invalid_use_of_protected_member
    return _Base(key, controller.viewModel, menuStyle, child);
  }
}
