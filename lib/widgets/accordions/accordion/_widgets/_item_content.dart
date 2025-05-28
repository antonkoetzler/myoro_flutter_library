part of '../myoro_accordion.dart';

/// Content of an [_Item].
final class _ItemContent extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _expandedItem;

  const _ItemContent(this._item, this._expandedItem);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return AnimatedSize(
      duration: themeExtension.itemContentAnimationDuration,
      curve: themeExtension.itemContentAnimationCurve,
      child: Container(
        width: double.infinity,
        color: context.resolveThemeExtension<MyoroButtonThemeExtension>().primaryIdleBackgroundColor,
        child: (_item == _expandedItem) ? _item.contentBuilder(context) : const SizedBox.shrink(),
      ),
    );
  }
}
