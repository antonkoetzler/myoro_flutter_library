part of '../myoro_menu.dart';

/// Item in the [MyoroMenu].
final class _Item extends StatelessWidget {
  const _Item(this._item);

  final MyoroMenuItem _item;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final BorderRadius itemBorderRadius = themeExtension.itemBorderRadius;
    final MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder =
        _item.isSelected ? (_) => _backgroundColorBuilder(context) : null;

    if (_item.builder != null) {
      return MyoroButton(
        configuration: MyoroButtonConfiguration(
          borderRadius: itemBorderRadius,
          backgroundColorBuilder: backgroundColorBuilder,
          onTapDown: _item.onTapDown,
          onTapUp: _item.onTapUp,
        ),
        builder: _item.builder!,
      );
    }

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        borderRadius: itemBorderRadius,
        backgroundColorBuilder: backgroundColorBuilder,
        onTapDown: _item.onTapDown,
        onTapUp: _item.onTapUp,
        iconConfiguration: _item.iconConfiguration,
        textConfiguration: _item.textConfiguration,
      ),
    );
  }

  Color _backgroundColorBuilder(BuildContext context) {
    final buttonVariantThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    return buttonVariantThemeExtension.primaryHoverBackgroundColor;
  }
}
