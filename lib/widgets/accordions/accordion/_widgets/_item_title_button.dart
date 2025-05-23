part of '../myoro_accordion.dart';

/// Button of an [_Item].
final class _ItemTitleButton extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionController _controller;

  const _ItemTitleButton(this._item, this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _controller.state.expandedItemController,
      builder: (_, MyoroAccordionItem? expandedItem, __) {
        return _valueListenableBuilder(context, themeExtension, expandedItem);
      },
    );
  }

  Widget _valueListenableBuilder(
    BuildContext context,
    MyoroAccordionThemeExtension themeExtension,
    MyoroAccordionItem? expandedItem,
  ) {
    final bool isExpanded = (_item == expandedItem);
    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        borderRadius: themeExtension.itemTitleButtonBorderRadius,
        backgroundColorBuilder: isExpanded ? _backgroundColorBuilder : null,
        onTapUp: _onTapUp,
      ),
      builder: (BuildContext context, MyoroGestureStatusEnum tapStatusEnum) {
        return _buttonBuilder(context, themeExtension, tapStatusEnum);
      },
    );
  }

  Color _backgroundColorBuilder(_) {
    return MyoroColorDesignSystem.transparent;
  }

  void _onTapUp(_) {
    _controller.state.expandedItemController.value != _item ? _controller.expandItem(_item) : _controller.reset();
  }

  Widget _buttonBuilder(
    BuildContext context,
    MyoroAccordionThemeExtension themeExtension,
    MyoroGestureStatusEnum tapStatusEnum,
  ) {
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
          _ItemTitleButtonArrow(_item, _controller, tapStatusEnum),
        ],
      ),
    );
  }
}
