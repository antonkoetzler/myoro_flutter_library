part of '../bundle/myoro_accordion_bundle.dart';

/// Base accordion [Widget].
final class _Base extends StatelessWidget {
  const _Base(this._themeExtension, this._viewModel);

  /// Theme extension.
  final MyoroAccordionThemeExtension? _themeExtension;

  /// View model.
  final MyoroAccordionViewModel _viewModel;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = _themeExtension ?? MyoroAccordionThemeExtension.builder(isDarkMode, colorScheme, textTheme);

    final state = _viewModel.state;
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final scrollController = state.scrollController;
    final configuration = state.configuration;
    final items = configuration.items;
    final thumbVisibility = configuration.thumbVisibility;

    return InheritedProvider.value(
      value: _viewModel,
      child: MyoroSingularThemeExtensionWrapper(
        themeExtension: themeExtension,
        child: ValueListenableBuilder(
          valueListenable: selectedItemsNotifier,
          builder: (_, selectedItems, _) {
            return Scrollbar(
              controller: scrollController,
              thumbVisibility: thumbVisibility,
              child: ListView.builder(
                controller: scrollController,
                itemCount: items.length,
                itemBuilder: (_, index) {
                  final item = items.elementAt(index);
                  return _Item(
                    item: item,
                    isSelected: selectedItems.contains(item),
                    isLastItem: index == items.length - 1,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
