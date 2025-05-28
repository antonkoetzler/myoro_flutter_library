part of '../myoro_menu.dart';

/// List of the items of the [MyoroMenu].
final class _Items<T> extends StatelessWidget {
  final MyoroMenuViewModel<T> _viewModel;

  const _Items(this._viewModel);

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
          if (_viewModel.state.configuration.searchCallback != null) _SearchBar(_viewModel),
          ValueListenableBuilder(
            valueListenable: _viewModel.state.queriedItemsController,
            builder: (_, __, ___) => _builder(),
          ),
        ],
      ),
    );
  }

  Widget _builder() {
    final items = _viewModel.state.queriedItems ?? _viewModel.state.items;
    final itemWidgets = items.map<Widget>((T item) => _Item(_viewModel.state.configuration.itemBuilder(item))).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (items.isNotEmpty) ...[
          Flexible(
            child: ListView.builder(
              controller: _viewModel.state.scrollController,
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
