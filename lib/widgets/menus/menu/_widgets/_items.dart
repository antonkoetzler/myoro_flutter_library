part of '../myoro_menu.dart';

/// List of the items of the [MyoroMenu].
final class _Items<T> extends StatelessWidget {
  final MyoroMenuController<T> _controller;

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
          if (_controller.state.configuration.searchCallback != null) _SearchBar(_controller),
          ValueListenableBuilder(
            valueListenable: _controller.state.queriedItemsController,
            builder: (_, __, ___) => _builder(),
          ),
        ],
      ),
    );
  }

  Widget _builder() {
    final items = _controller.state.queriedItems ?? _controller.state.items;
    final itemWidgets =
        items.map<Widget>((T item) => _Item(_controller.state.configuration.itemBuilder(item))).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (items.isNotEmpty) ...[
          Flexible(
            child: ListView.builder(
              controller: _controller.state.scrollController,
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
