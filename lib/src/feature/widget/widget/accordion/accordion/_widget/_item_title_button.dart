part of '../bundle/myoro_accordion_bundle.dart';

/// Button of an [_Item].
final class _ItemTitleButton<T> extends StatelessWidget {
  const _ItemTitleButton(this._item, this._isSelected);

  final T _item;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final accordionStyle = context.watch<MyoroAccordionStyle>();
    final itemTitleButtonSpacing =
        accordionStyle.itemTitleButtonSpacing ?? accordionThemeExtension.itemTitleButtonSpacing;
    final itemTitleButtonTitleTextStyle =
        accordionStyle.itemTitleButtonTitleTextStyle ?? accordionThemeExtension.itemTitleButtonTitleTextStyle;
    final itemTitleButtonContentPadding =
        accordionStyle.itemTitleButtonContentPadding ??
        accordionThemeExtension.itemTitleButtonContentPadding ??
        EdgeInsets.zero;

    const buttonStyle = MyoroButtonStyle(borderRadius: BorderRadius.zero);

    final viewModel = context.read<MyoroAccordionViewModel<T>>();
    final toggleItem = viewModel.toggleItem;
    final state = viewModel.state;
    final titleBuilder = state.titleBuilder;

    final title = titleBuilder(_item, _isSelected);

    return MyoroButton(
      onTapUp: (_, _) => toggleItem(_item),
      style: buttonStyle,
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
            _ItemTitleButtonArrow(_isSelected),
          ],
        ),
      ),
    );
  }
}
