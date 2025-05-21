part of '../myoro_accordion.dart';

/// Arrow of an [_Item].
final class _ItemTitleButtonArrow extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionController _controller;
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ItemTitleButtonArrow(this._item, this._controller, this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final buttonVariantThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _controller.expandedItemNotifier,
      builder: (_, MyoroAccordionItem? expandedItem, __) {
        final bool isExpanded = (_item == expandedItem);

        return AnimatedRotation(
          turns: isExpanded ? 0.5 : 0,
          duration: accordionThemeExtension.itemTitleButtonArrowAnimationDuration,
          curve: accordionThemeExtension.itemTitleButtonArrowAnimationCurve,
          child: Container(
            decoration: BoxDecoration(
              color: isExpanded ? _getBackgroundColor(buttonVariantThemeExtension) : null,
              borderRadius: accordionThemeExtension.itemTitleButtonArrowBorderRadius,
            ),
            child: Icon(
              accordionThemeExtension.itemTitleButtonArrowIcon,
              size: accordionThemeExtension.itemTitleButtonArrowIconSize,
              color: accordionThemeExtension.itemTitleButtonArrowIconColor,
            ),
          ),
        );
      },
    );
  }

  Color _getBackgroundColor(MyoroButtonThemeExtension buttonVariantThemeExtension) {
    return switch (_tapStatusEnum) {
      MyoroTapStatusEnum.hover => buttonVariantThemeExtension.primaryHoverBackgroundColor,
      MyoroTapStatusEnum.tap => buttonVariantThemeExtension.primaryTapBackgroundColor,
      _ => Colors.transparent,
    };
  }
}
