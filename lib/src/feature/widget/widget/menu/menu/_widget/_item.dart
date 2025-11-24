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
        style: const MyoroButtonStyle()
            .singleBackgroundColor(selectedItemColor)
            .copyWith(borderRadius: itemBorderRadius),
        cursor: _menuItem.cursor,
        tooltipText: _menuItem.tooltipText,
        onTapDown: _menuItem.onTapDown,
        onTapUp: _menuItem.onTapUp,
        isLoading: _menuItem.isLoading,
        builder: _menuItem.builder,
      ),
      MyoroMenuCheckboxItem() => MyoroCheckbox(
        style: _menuItem.style,
        label: _menuItem.label,
        value: _menuItem.value,
        onChanged: _menuItem.onChanged,
      ),
      MyoroMenuIconTextButtonItem() => MyoroIconTextButton(
        style: const MyoroIconTextButtonStyle()
            .singleBackgroundColor(selectedItemColor)
            .copyWith(borderRadius: itemBorderRadius, iconSize: _menuItem.iconSize, textStyle: _menuItem.textStyle),
        cursor: _menuItem.cursor,
        tooltipText: _menuItem.tooltipText,
        onTapDown: _menuItem.onTapDown,
        onTapUp: _menuItem.onTapUp,
        isLoading: _menuItem.isLoading,
        invert: _menuItem.invert,
        text: _menuItem.text,
      ),
      MyoroMenuRadioItem() => MyoroRadio(
        style: _menuItem.style,
        label: _menuItem.label,
        value: _menuItem.value,
        onChanged: _menuItem.onChanged,
      ),
    };
  }
}
