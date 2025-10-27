part of '../bundle/myoro_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleDropdown<T> extends StatelessWidget {
  /// Default value of [menuStyle].
  static const menuStyleDefaultValue = MyoroMenuStyle();

  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  /// Default constructor.
  const MyoroSingleDropdown({
    super.key,
    required this.controller,
    this.menuStyle = menuStyleDefaultValue,
    this.dropdownType = dropdownTypeDefaultValue,
    this.targetKey,
    required this.request,
    required this.itemBuilder,
    required this.child,
  });

  /// Controller.
  final MyoroSingleDropdownController<T> controller;

  /// [MyoroMenu] style.
  final MyoroMenuStyle menuStyle;

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Target key.
  final GlobalKey? targetKey;

  /// Request.
  final MyoroMenuRequest<T> request;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Child.
  final Widget child;

  @override
  Widget build(_) {
    return _Base(controller, menuStyle, dropdownType, targetKey, request, itemBuilder, child);
  }
}
