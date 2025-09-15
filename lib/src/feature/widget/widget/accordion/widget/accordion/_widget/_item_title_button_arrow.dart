part of '../myoro_accordion.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _selectedItem;

  const _ItemTitleButtonArrow(this._item, this._selectedItem);

  @override
  Widget build(context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemTitleButtonArrowAnimationDuration =
        accordionThemeExtension.itemTitleButtonArrowAnimationDuration;
    final itemTitleButtonArrowAnimationCurve =
        accordionThemeExtension.itemTitleButtonArrowAnimationCurve;
    final itemTitleButtonArrowIcon = accordionThemeExtension.itemTitleButtonArrowIcon;
    final itemTitleButtonArrowIconSize = accordionThemeExtension.itemTitleButtonArrowIconSize;
    final itemTitleButtonArrowIconColor = accordionThemeExtension.itemTitleButtonArrowIconColor;

    final isSelected = _item == _selectedItem;

    final child = Icon(
      itemTitleButtonArrowIcon ?? Icons.keyboard_arrow_down,
      size: itemTitleButtonArrowIconSize,
      color: itemTitleButtonArrowIconColor,
    );

    return itemTitleButtonArrowAnimationDuration != null &&
            itemTitleButtonArrowAnimationCurve != null
        ? AnimatedRotation(
            turns: isSelected ? 0.5 : 0,
            duration: itemTitleButtonArrowAnimationDuration,
            curve: itemTitleButtonArrowAnimationCurve,
            child: child,
          )
        : child;
  }
}
