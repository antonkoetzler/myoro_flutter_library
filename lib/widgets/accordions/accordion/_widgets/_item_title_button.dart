part of '../myoro_accordion.dart';

/// Button of an [_Item].
final class _ItemTitleButton extends StatelessWidget {
  final MyoroAccordionItem _item;

  const _ItemTitleButton(this._item);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final viewModel = context.read<MyoroAccordionViewModel>();

    return ValueListenableBuilder(
      valueListenable: viewModel.controller,
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
        backgroundColorBuilder: isExpanded ? (_) => _backgroundColorBuilder(context) : null,
        onTapUp: (_) => _onTapUp(context),
      ),
      builder: (BuildContext context, MyoroTapStatusEnum tapStatusEnum) {
        return _buttonBuilder(context, themeExtension, tapStatusEnum);
      },
    );
  }

  Color _backgroundColorBuilder(BuildContext context) {
    return context.resolveThemeExtension<MyoroButtonThemeExtension>().primaryIdleBackgroundColor;
  }

  void _onTapUp(BuildContext context) {
    final viewModel = context.read<MyoroAccordionViewModel>();
    viewModel.controller.expandedItem != _item ? viewModel.controller.expandItem(_item) : viewModel.controller.reset();
  }

  Widget _buttonBuilder(
    BuildContext context,
    MyoroAccordionThemeExtension themeExtension,
    MyoroTapStatusEnum tapStatusEnum,
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
          _ItemTitleButtonArrow(_item, tapStatusEnum),
        ],
      ),
    );
  }
}
