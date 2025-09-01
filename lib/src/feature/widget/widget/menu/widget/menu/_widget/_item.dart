part of '../bundle/myoro_menu_bundle.dart';

/// Item in the [MyoroMenu].
final class _Item<T, C extends _C<T>> extends StatelessWidget {
  const _Item(this._item, this._menuItem, this._selectedItems);

  final T _item;
  final MyoroMenuItem _menuItem;
  final Set<T> _selectedItems;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final itemBorderRadius = themeExtension.itemBorderRadius;
    final backgroundColorBuilder = _selectedItems.contains(_item) ? (_) => _backgroundColorBuilder(context) : null;

    final viewModel = context.read<MyoroMenuViewModel<T, C>>();
    final toggleItem = viewModel.toggleItem;

    final buttonConfiguration = _menuItem.buttonConfiguration;
    final buttonBuilder = _menuItem.buttonBuilder;
    final iconTextButtonConfiguration = _menuItem.iconTextButtonConfiguration;

    if (buttonConfiguration != null) {
      return MyoroButton(
        configuration: buttonConfiguration.copyWith(
          borderRadius: itemBorderRadius,
          backgroundColorBuilder: backgroundColorBuilder,
          onTapUp: (details) => toggleItem(_item),
        ),
        builder: buttonBuilder!,
      );
    }

    return MyoroIconTextButton(
      configuration: iconTextButtonConfiguration!.copyWith(
        borderRadius: itemBorderRadius,
        backgroundColorBuilder: backgroundColorBuilder,
        onTapUp: (details) => toggleItem(_item),
      ),
    );
  }

  Color _backgroundColorBuilder(BuildContext context) {
    final buttonVariantThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    return buttonVariantThemeExtension.primaryTapBackgroundColor;
  }
}
