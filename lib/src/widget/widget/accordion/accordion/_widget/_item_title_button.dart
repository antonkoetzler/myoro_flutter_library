part of '../myoro_accordion.dart';

/// Button of an [_Item].
final class _ItemTitleButton extends StatelessWidget {
  final MyoroAccordionItem _item;

  const _ItemTitleButton(this._item);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    final viewModel = context.read<MyoroAccordionViewModel>();
    final controller = viewModel.state.controller;

    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, MyoroAccordionItem? expandedItem, _) {
        return MyoroButton(
          configuration: MyoroButtonConfiguration(
            borderRadius: themeExtension.itemTitleButtonBorderRadius,
            backgroundColorBuilder: _item == expandedItem
                ? (_) => viewModel.itemTitleButtonBackgroundColorBuilder(buttonThemeExtension)
                : null,
            onTapUp: (_) => viewModel.itemTitleButtonOnTapUp(_item),
          ),
          builder: (context, tapStatusEnum) {
            return Padding(
              padding: themeExtension.itemTitleButtonContentPadding,
              child: Row(
                spacing: themeExtension.itemTitleButtonSpacing,
                children: [
                  Expanded(
                    child: DefaultTextStyle(
                      style: themeExtension.itemTitleButtonTitleTextStyle,
                      child: _item.titleBuilder(context),
                    ),
                  ),
                  _ItemTitleButtonArrow(_item, tapStatusEnum),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
