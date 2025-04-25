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

  MyoroAccordionNotifier? _localNotifier;
  MyoroAccordionNotifier get _notifier {
    return _configuration.notifier ?? (_localNotifier ??= MyoroAccordionNotifier());
  }

  final _scrollController = ScrollController();

  @override
  void dispose() {
    _localNotifier?.dispose();
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
    return _Item(_notifier, item: _items[index], isLastItem: index == _items.length - 1);
  }
}

final class _Item extends StatelessWidget {
  final MyoroAccordionNotifier _notifier;
  final MyoroAccordionItem item;
  final bool isLastItem;

  const _Item(this._notifier, {required this.item, required this.isLastItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ItemTitleButton(item, _notifier),
        ValueListenableBuilder(valueListenable: _notifier, builder: _builder),
        if (!isLastItem) const _Divider(),
      ],
    );
  }

  Widget _builder(BuildContext context, MyoroAccordionItem? expandedItem, __) {
    return _ItemContent(item, expandedItem);
  }
}

final class _ItemTitleButton extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionNotifier _notifier;

  const _ItemTitleButton(this._item, this._notifier);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _notifier,
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
      builder: (BuildContext context, MyoroTapStatusEnum tapStatusEnum) {
        return _buttonBuilder(context, themeExtension, tapStatusEnum);
      },
    );
  }

  Color _backgroundColorBuilder(_) {
    return MyoroColorDesignSystem.transparent;
  }

  void _onTapUp(_) {
    _notifier.expandedItem != _item ? _notifier.expandItem(_item) : _notifier.reset();
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
          _ItemTitleButtonArrow(_item, _notifier, tapStatusEnum),
        ],
      ),
    );
  }
}

final class _ItemTitleButtonArrow extends StatelessWidget {
  final MyoroAccordionItem _item;
  final MyoroAccordionNotifier _notifier;
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ItemTitleButtonArrow(this._item, this._notifier, this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();
    final buttonVariantThemeExtension =
        context.resolveThemeExtension<MyoroButtonVariantThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _notifier,
      builder: (_, MyoroAccordionItem? expandedItem, __) {
        final bool isExpanded = (_item == expandedItem);

        return AnimatedRotation(
          turns: isExpanded ? 0.5 : 0,
          duration: accordionThemeExtension.itemTitleButtonArrowAnimationDuration,
          curve: accordionThemeExtension.itemTitleButtonArrowAnimationCurve,
          child: Container(
            decoration: BoxDecoration(
              color: isExpanded ? _getBackgroundColor(buttonVariantThemeExtension) : null,
              borderRadius: accordionThemeExtension.itemTitleButtonArrowBorderRadius,
            ),
            child: Icon(
              accordionThemeExtension.itemTitleButtonArrowIcon,
              size: accordionThemeExtension.itemTitleButtonArrowIconSize,
              color: accordionThemeExtension.itemTitleButtonArrowIconColor,
            ),
          ),
        );
      },
    );
  }

  Color _getBackgroundColor(MyoroButtonVariantThemeExtension buttonVariantThemeExtension) {
    return switch (_tapStatusEnum) {
      MyoroTapStatusEnum.hover => buttonVariantThemeExtension.primaryHoverBackgroundColor,
      MyoroTapStatusEnum.tap => buttonVariantThemeExtension.primaryTapBackgroundColor,
      _ => Colors.transparent,
    };
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
      child: SizedBox(
        width: double.infinity,
        child: (_item == _expandedItem) ? _item.contentBuilder(context) : const SizedBox.shrink(),
      ),
    );
  }
}
