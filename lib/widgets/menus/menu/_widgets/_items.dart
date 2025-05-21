part of '../myoro_menu.dart';

/// List of the items of the [MyoroMenu].
final class _Items<T> extends StatelessWidget {
  final MyoroMenuController<T> _controller;
  MyoroMenuConfiguration<T> get _configuration => _controller.configuration;

  const _Items(this._controller);

  @override
  Widget build(BuildContext context) {
    final borderRadius = context.resolveThemeExtension<MyoroMenuThemeExtension>().borderRadius;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius.copyWith(
        topLeft: Radius.circular(borderRadius.topLeft.x - 4),
        topRight: Radius.circular(borderRadius.topLeft.x - 4),
        bottomLeft: Radius.circular(borderRadius.topLeft.x - 4),
        bottomRight: Radius.circular(borderRadius.topLeft.x - 4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_configuration.searchCallback != null) _SearchBar(_controller),
          ValueListenableBuilder(
            valueListenable: _controller.queriedItemsNotifier,
            builder: (_, __, ___) => _builder(),
          ),
        ],
      ),
    );
  }

  Widget _builder() {
    final items = _controller.queriedItems ?? _controller.items;
    final itemWidgets = items.map<Widget>((T item) => _Item(_configuration.itemBuilder(item))).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (items.isNotEmpty) ...[
          Flexible(
            child: ListView.builder(
              controller: _controller.scrollController,
              shrinkWrap: true,
              itemCount: itemWidgets.length,
              itemBuilder: (_, int index) => itemWidgets[index],
            ),
          ),
        ] else ...[
          const Flexible(child: _DialogText('No items to display.')),
        ],
      ],
    );
  }
}
