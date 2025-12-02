part of '../widget/myoro_menu.dart';

/// Section where the items of the [MyoroMenu] is displayed.
final class _ItemsSection<T> extends StatelessWidget {
  /// Default constructor.
  const _ItemsSection(this._queriedItems);

  /// Queried items.
  final Set<T> _queriedItems;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final state = viewModel.state;
    final itemBuilder = state.itemBuilder;
    final scrollController = state.scrollController;

    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final itemsSectionSpacing = themeExtension.itemsSectionSpacing ?? 0;

    return _queriedItems.isNotEmpty
        ? Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              itemCount: _queriedItems.length,
              itemBuilder: (_, index) {
                final item = _queriedItems.elementAt(index);
                final isLast = index == _queriedItems.length - 1;
                return Padding(
                  padding: EdgeInsets.only(bottom: isLast ? 0 : itemsSectionSpacing),
                  child: _Item<T>(item, itemBuilder(index, item)),
                );
              },
            ),
          )
        : const Flexible(child: _DialogText('No items to display.'));
  }
}
