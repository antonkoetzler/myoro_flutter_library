part of '../myoro_accordion.dart';

/// Button of an [_Item].
final class _ItemTitleButton extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionItem? _selectedItem;

  const _ItemTitleButton(this._item, this._selectedItem);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final itemTitleButtonSpacing = themeExtension.itemTitleButtonSpacing;
    final itemTitleButtonTitleTextStyle = themeExtension.itemTitleButtonTitleTextStyle;
    final itemTitleButtonContentPadding =
        themeExtension.itemTitleButtonContentPadding ?? EdgeInsets.zero;

    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    final backgroundIdleColor = buttonThemeExtension.backgroundIdleColor;
    final backgroundHoverColor = buttonThemeExtension.backgroundHoverColor;

    final viewModel = context.read<MyoroAccordionViewModel>();
    final toggleItem = viewModel.toggleItem;

    final title = _item.title;
    final isSelected = _item == _selectedItem;

    return MyoroButton(
      configuration: MyoroButtonConfiguration(onTapUp: (_) => toggleItem(_item)),
      themeExtension: buttonThemeExtension.copyWith(
        backgroundIdleColor: isSelected ? backgroundHoverColor : backgroundIdleColor,
        borderRadiusProvided: false,
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
