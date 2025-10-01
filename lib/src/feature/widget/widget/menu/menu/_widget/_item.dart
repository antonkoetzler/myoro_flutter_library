part of '../bundle/myoro_menu_bundle.dart';

/// Item in the menu.
final class _Item<T, C extends _C<T>> extends StatelessWidget {
  const _Item(this._item, this._menuItem, this._selectedItems);

  final T _item;
  final MyoroMenuItem _menuItem;
  final Set<T> _selectedItems;

  @override
  Widget build(context) {
    final isSelected = _selectedItems.contains(_item);

    final menuThemeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.read<MyoroMenuStyle>();
    final itemBorderRadius = style.itemBorderRadius ?? menuThemeExtension.itemBorderRadius;
    final selectedItemColor = isSelected ? (style.selectedItemColor ?? menuThemeExtension.selectedItemColor) : null;

    final viewModel = context.read<MyoroMenuViewModel<T, C>>();
    final toggleItem = viewModel.toggleItem;

    final buttonConfiguration = _menuItem.buttonConfiguration;
    final buttonBuilder = _menuItem.buttonBuilder;
    final iconTextButtonConfiguration = _menuItem.iconTextButtonConfiguration;

    if (buttonBuilder != null) {
      return MyoroButton(
        configuration: (buttonConfiguration ?? const MyoroButtonConfiguration()).copyWith(
          onTapUp: (details) => toggleItem(_item),
        ),
        style: const MyoroButtonStyle()
            .copyWith(borderRadius: itemBorderRadius)
            .singleBackgroundColor(selectedItemColor),
        builder: buttonBuilder,
      );
    }

    return MyoroIconTextButton(
      configuration: iconTextButtonConfiguration!.copyWith(onTapUp: (details) => toggleItem(_item)),
      style: const MyoroIconTextButtonStyle()
          .copyWith(borderRadius: itemBorderRadius)
          .singleBackgroundColor(selectedItemColor),
    );
  }
}
