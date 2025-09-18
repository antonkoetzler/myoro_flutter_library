part of '../bundle/myoro_menu_bundle.dart';

/// Item in the [MyoroMenu].
final class _Item<T, C extends _C<T>> extends StatelessWidget {
  const _Item(this._item, this._menuItem, this._selectedItems);

  final T _item;
  final MyoroMenuItem _menuItem;
  final Set<T> _selectedItems;

  @override
  Widget build(context) {
    final isSelected = _selectedItems.contains(_item);

    final menuThemeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final itemBorderRadius = menuThemeExtension.itemBorderRadius;
    final backgroundColor = menuThemeExtension.backgroundColor;

    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>().copyWith(
      borderRadius: itemBorderRadius,
      borderRadiusProvided: itemBorderRadius != null,
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null && isSelected,
    );
    final iconTextButtonThemeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>().copyWith(
      borderRadius: itemBorderRadius,
      borderRadiusProvided: itemBorderRadius != null,
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null && isSelected,
    );

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
        themeExtension: buttonThemeExtension,
        builder: buttonBuilder,
      );
    }

    return MyoroIconTextButton(
      configuration: iconTextButtonConfiguration!.copyWith(onTapUp: (details) => toggleItem(_item)),
      themeExtension: iconTextButtonThemeExtension,
    );
  }
}
