part of '../myoro_accordion.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _selectedItem;
  final MyoroTapStatusEnum _tapStatus;

  const _ItemTitleButtonArrow(this._item, this._selectedItem, this._tapStatus);

  @override
  Widget build(context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemTitleButtonArrowAnimationDuration = accordionThemeExtension.itemTitleButtonArrowAnimationDuration;
    final itemTitleButtonArrowAnimationCurve = accordionThemeExtension.itemTitleButtonArrowAnimationCurve;
    final itemTitleButtonArrowBorderRadius = accordionThemeExtension.itemTitleButtonArrowBorderRadius;
    final itemTitleButtonArrowIcon = accordionThemeExtension.itemTitleButtonArrowIcon;
    final itemTitleButtonArrowIconSize = accordionThemeExtension.itemTitleButtonArrowIconSize;
    final itemTitleButtonArrowIconColor = accordionThemeExtension.itemTitleButtonArrowIconColor;

    final buttonVariantThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    final isSelected = _item == _selectedItem;

    final child = Container(
      decoration: BoxDecoration(
        color: isSelected ? itemTitleButtonArrowBackgroundColor(_tapStatus, buttonVariantThemeExtension) : null,
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
