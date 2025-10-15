part of '../main_screen.dart';

/// Body of [MainScreen].
final class _WidgetListingAccordion extends StatelessWidget {
  const _WidgetListingAccordion();

  @override
  Widget build(context) {
    final viewModel = context.read<MainScreenViewModel>();
    final filteredItemsController = viewModel.filteredItemsController;

    return ValueListenableBuilder(
      valueListenable: filteredItemsController,
      builder: (_, filteredItems, __) {
        return MyoroSingleAccordion(
          configuration: MyoroSingleAccordionConfiguration(
            titleBuilder: (i, _) => _WidgetListingAccordionItemTitle(i),
            contentBuilder: (i, _) => _WidgetListingAccordionItemContent(i),
            items: filteredItems.toSet(),
          ),
        );
      },
    );
  }
}
