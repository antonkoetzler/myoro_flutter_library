part of '../bundle/myoro_accordion_bundle.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow extends StatelessWidget {
  final MyoroAccordionItem _item;
  final bool _isSelected;

  const _ItemTitleButtonArrow(this._item, this._isSelected);

  @override
  Widget build(context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemTitleButtonArrowAnimationDuration = accordionThemeExtension.itemTitleButtonArrowAnimationDuration;
    final itemTitleButtonArrowAnimationCurve = accordionThemeExtension.itemTitleButtonArrowAnimationCurve;
    final itemTitleButtonArrowIcon = accordionThemeExtension.itemTitleButtonArrowIcon;
    final itemTitleButtonArrowIconSize = accordionThemeExtension.itemTitleButtonArrowIconSize;
    final itemTitleButtonArrowIconColor = accordionThemeExtension.itemTitleButtonArrowIconColor;

    final child = Icon(
      itemTitleButtonArrowIcon ?? Icons.keyboard_arrow_down,
      size: itemTitleButtonArrowIconSize,
      color: itemTitleButtonArrowIconColor,
    );

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
