part of '../myoro_accordion.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _selectedItem;

  const _ItemTitleButtonArrow(this._item, this._selectedItem);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemTitleButtonArrowAnimationDuration = themeExtension.itemTitleButtonArrowAnimationDuration;
    final itemTitleButtonArrowAnimationCurve = themeExtension.itemTitleButtonArrowAnimationCurve;
    final itemTitleButtonArrowBorderRadius = themeExtension.itemTitleButtonArrowBorderRadius;
    final itemTitleButtonArrowIcon = themeExtension.itemTitleButtonArrowIcon;
    final itemTitleButtonArrowIconSize = themeExtension.itemTitleButtonArrowIconSize;
    final itemTitleButtonArrowIconColor = themeExtension.itemTitleButtonArrowIconColor;
    final itemTitleButtonArrowBackgroundColor = themeExtension.itemTitleButtonArrowBackgroundColor;

    final isSelected = _item == _selectedItem;

    final child = Container(
      decoration: BoxDecoration(
        color: isSelected ? itemTitleButtonArrowBackgroundColor : null,
        borderRadius: itemTitleButtonArrowBorderRadius,
      ),
      child: Icon(itemTitleButtonArrowIcon, size: itemTitleButtonArrowIconSize, color: itemTitleButtonArrowIconColor),
    );

    return itemTitleButtonArrowAnimationDuration != null && itemTitleButtonArrowAnimationCurve != null
        ? AnimatedRotation(
            turns: isSelected ? 0.5 : 0,
            duration: itemTitleButtonArrowAnimationDuration,
            curve: itemTitleButtonArrowAnimationCurve,
            child: child,
          )
        : child;
  }
}
