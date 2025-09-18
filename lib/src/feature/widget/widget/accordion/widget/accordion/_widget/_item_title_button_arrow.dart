part of '../bundle/myoro_accordion_bundle.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow<T> extends StatelessWidget {
  const _ItemTitleButtonArrow(this._isSelected);

  final bool _isSelected;

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
