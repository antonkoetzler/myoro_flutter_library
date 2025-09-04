part of '../myoro_accordion.dart';

/// Button of an [_Item].
final class _ItemTitleButton extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _selectedItem;

  const _ItemTitleButton(this._item, this._selectedItem);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemContentBackgroundColor = themeExtension.itemContentBackgroundColor;
    final itemTitleButtonBorderRadius = themeExtension.itemTitleButtonBorderRadius;
    final itemTitleButtonSpacing = themeExtension.itemTitleButtonSpacing;
    final itemTitleButtonTitleTextStyle = themeExtension.itemTitleButtonTitleTextStyle;
    final itemTitleButtonContentPadding = themeExtension.itemTitleButtonContentPadding ?? EdgeInsets.zero;

    final viewModel = context.read<MyoroAccordionViewModel>();
    final toggleItem = viewModel.toggleItem;

    final title = _item.titleBuilder(context);

    return MyoroButton(
      configuration: MyoroButtonConfiguration(onTapUp: (_) => toggleItem(_item)),
      style: MyoroButtonStyle(
        backgroundColorBuilder: itemContentBackgroundColor != null ? (_) => itemContentBackgroundColor : null,
        borderRadius: itemTitleButtonBorderRadius,
      ),
      builder: (context, tapStatus) => Padding(
        padding: itemTitleButtonContentPadding,
        child: Row(
          spacing: itemTitleButtonSpacing ?? 0,
          children: [
            Expanded(
              child: itemTitleButtonTitleTextStyle != null
                  ? DefaultTextStyle(style: itemTitleButtonTitleTextStyle, child: title)
                  : title,
            ),
            _ItemTitleButtonArrow(_item, _selectedItem),
          ],
        ),
      ),
    );
  }
}
