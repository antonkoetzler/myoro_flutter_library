part of '../myoro_accordion.dart';

/// Content of an [_Item].
final class _ItemContent extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _expandedItem;

  const _ItemContent(this._item, this._expandedItem);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemContentAnimationDuration = themeExtension.itemContentAnimationDuration;
    final itemContentAnimationCurve = themeExtension.itemContentAnimationCurve;
    final itemContentBackgroundColor = themeExtension.itemContentBackgroundColor;

    final child = SizedBox(
      width: double.infinity,
      child: (_item == _expandedItem) ? _item.content : const SizedBox(height: 0),
    );

    return Container(
      width: double.infinity,
      color: itemContentBackgroundColor,
      child: itemContentAnimationDuration != null && itemContentAnimationCurve != null
          ? AnimatedSize(
              duration: itemContentAnimationDuration,
              curve: itemContentAnimationCurve,
              clipBehavior: Clip.hardEdge,
              child: child,
            )
          : child,
    );
  }
}
