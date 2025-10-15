part of '../bundle/myoro_accordion_bundle.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow<T> extends StatelessWidget {
  const _ItemTitleButtonArrow(this._isSelected);

  final bool _isSelected;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final style = context.watch<MyoroAccordionStyle>();
    final itemTitleButtonArrowAnimationDuration = style.itemTitleButtonArrowAnimationDuration ?? themeExtension.itemTitleButtonArrowAnimationDuration;
    final itemTitleButtonArrowAnimationCurve = style.itemTitleButtonArrowAnimationCurve ?? themeExtension.itemTitleButtonArrowAnimationCurve;
    final itemTitleButtonArrowIcon = style.itemTitleButtonArrowIcon ?? themeExtension.itemTitleButtonArrowIcon ?? Icons.keyboard_arrow_down;
    final itemTitleButtonArrowIconSize = style.itemTitleButtonArrowIconSize ?? themeExtension.itemTitleButtonArrowIconSize ?? 25;
    final itemTitleButtonArrowIconColor = style.itemTitleButtonArrowIconColor ?? themeExtension.itemTitleButtonArrowIconColor;

    final child = Icon(itemTitleButtonArrowIcon, size: itemTitleButtonArrowIconSize, color: itemTitleButtonArrowIconColor);

    return itemTitleButtonArrowAnimationDuration != null && itemTitleButtonArrowAnimationCurve != null
        ? AnimatedRotation(
            turns: _isSelected ? 0.5 : 0,
            duration: itemTitleButtonArrowAnimationDuration,
            curve: itemTitleButtonArrowAnimationCurve,
            child: child,
          )
        : child;
  }
}
