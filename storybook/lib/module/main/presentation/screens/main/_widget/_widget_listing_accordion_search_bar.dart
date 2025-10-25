part of '../main_screen.dart';

/// Search bar of of [MainScreen].
final class _WidgetListingAccordionSearchBar extends StatelessWidget {
  const _WidgetListingAccordionSearchBar();

  @override
  Widget build(context) {
    final viewModel = context.read<MainScreenViewModel>();
    final widgetListingAccordionSearchBarOnChanged = viewModel.widgetListingAccordionSearchBarOnChanged;

    final themeExtension = context.resolveThemeExtension<MainScreenThemeExtension>();
    final widgetListingAccordionSearchBarMargin = themeExtension.widgetListingAccordionSearchBarMargin;

    return Padding(
      padding: widgetListingAccordionSearchBarMargin,
      child: MyoroInput(placeholder: 'i.e. MyoroDropdown', onChanged: widgetListingAccordionSearchBarOnChanged),
    );
  }
}
