part of 'bundle/myoro_dropdown_bundle.dart';

/// Single item dropdown.
class MyoroSingleDropdown<T> extends StatelessWidget {
  const MyoroSingleDropdown({
    super.key,
    required this.controller,
    required this.menuStyle,
    required this.child,
  });

  /// Controller.
  final MyoroSingleDropdownController<T> controller;

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
