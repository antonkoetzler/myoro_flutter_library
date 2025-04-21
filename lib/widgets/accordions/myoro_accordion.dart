import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Accordion of MFL.
///
/// TODO: Needs to be tested.
class MyoroAccordion extends StatefulWidget {
  final MyoroAccordionConfiguration configuration;

  const MyoroAccordion({super.key, required this.configuration});

  @override
  State<MyoroAccordion> createState() => _MyoroAccordionState();
}

final class _MyoroAccordionState extends State<MyoroAccordion> {
  MyoroAccordionConfiguration get _configuration => widget.configuration;
  List<MyoroAccordionItem> get _items => _configuration.items;

  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _items.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }

  Widget _itemBuilder(_, int index) {
    return _Item(_items[index], index == _items.length - 1);
  }
}

final class _Item extends StatelessWidget {
  final MyoroAccordionItem _item;
  final bool _isLastItem;

  const _Item(this._item, this._isLastItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ItemTitleButton(_item.titleBuilder),
        if (!_isLastItem) const _Divider(),
      ],
    );
  }
}

final class _ItemTitleButton extends StatefulWidget {
  final MyoroAccordionItemTitleBuilder _itemTitleBuilder;

  const _ItemTitleButton(this._itemTitleBuilder);

  @override
  State<_ItemTitleButton> createState() => _ItemTitleButtonState();
}

final class _ItemTitleButtonState extends State<_ItemTitleButton> {
  final _displayingDropdownNotifer = ValueNotifier(false);

  @override
  void dispose() {
    _displayingDropdownNotifer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        borderRadius: themeExtension.itemTitleButtonBorderRadius,
      ),
      builder: (BuildContext context, __) => _builder(context, themeExtension),
    );
  }

  Widget _builder(
    BuildContext context,
    MyoroAccordionThemeExtension themeExtension,
  ) {
    return Padding(
      padding: themeExtension.itemTitleButtonContentPadding,
      child: Row(
        spacing: themeExtension.itemTitleButtonSpacing,
        children: [
          Expanded(
            child: DefaultTextStyle(
              style: themeExtension.itemTitleButtonTitleTextStyle,
              child: widget._itemTitleBuilder(context),
            ),
          ),
          const _ItemTitleButtonArrow(),
        ],
      ),
    );
  }
}

final class _ItemTitleButtonArrow extends StatelessWidget {
  const _ItemTitleButtonArrow();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return Icon(
      themeExtension.itemTitleButtonArrowIcon,
      size: themeExtension.itemTitleButtonArrowIconSize,
      color: themeExtension.itemTitleButtonArrowIconColor,
    );
  }
}

final class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const MyoroBasicDivider(
      configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal),
    );
  }
}
