part of '../widget/myoro_menu.dart';

/// Item in the menu.
final class _Item<T> extends StatelessWidget {
  const _Item(this._item, this._menuItem);

  final T _item;
  final MyoroMenuItem _menuItem;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final state = viewModel.state;
    final selectedItems = state.selectedItems;
    final isSelected = selectedItems.contains(_item);

    final menuThemeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final itemBorderRadius = style.itemBorderRadius ?? menuThemeExtension.itemBorderRadius;
    final selectedItemColor = isSelected ? (style.selectedItemColor ?? menuThemeExtension.selectedItemColor) : null;

    return switch (_menuItem) {
      MyoroMenuButtonItem() => MyoroButton(
        style: const MyoroButtonStyle().copyWith(borderRadius: itemBorderRadius).singleBackgroundColor(selectedItemColor),
        cursor: _menuItem.cursor,
        tooltipText: _menuItem.tooltipText,
        onTapDown: _menuItem.onTapDown,
        onTapUp: _menuItem.onTapUp,
        isLoading: _menuItem.isLoading,
        builder: _menuItem.builder,
      ),
      MyoroMenuIconTextButtonItem() => MyoroIconTextButton(
        style: const MyoroIconTextButtonStyle().copyWith(borderRadius: itemBorderRadius).singleBackgroundColor(selectedItemColor),
        cursor: _menuItem.cursor,
        tooltipText: _menuItem.tooltipText,
        onTapDown: _menuItem.onTapDown,
        onTapUp: _menuItem.onTapUp,
        isLoading: _menuItem.isLoading,
        invert: _menuItem.invert,
        iconConfiguration: _menuItem.iconConfiguration,
        text: _menuItem.text,
        textConfiguration: _menuItem.textConfiguration,
      ),
    };
  }
}
