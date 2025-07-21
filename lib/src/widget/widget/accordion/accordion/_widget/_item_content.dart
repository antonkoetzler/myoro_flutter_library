part of '../myoro_accordion.dart';

/// Content of an [_Item].
final class _ItemContent extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _expandedItem;

  const _ItemContent(this._item, this._expandedItem);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    return Container(
      width: double.infinity,
      color: buttonThemeExtension.primaryIdleBackgroundColor,
      child: AnimatedSize(
        duration: themeExtension.itemContentAnimationDuration,
        curve: themeExtension.itemContentAnimationCurve,
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: double.infinity,
          child: (_item == _expandedItem) ? _item.contentBuilder(context) : const SizedBox(height: 0),
        ),
      ),
    );
  }
}
