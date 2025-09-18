part of '../main_screen.dart';

/// Content of an accordion item in accordions.
final class _WidgetListingAccordionItemContent extends StatelessWidget {
  const _WidgetListingAccordionItemContent(this._widgetCategory);

  final MyoroWidgetListEnum _widgetCategory;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MainScreenThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: _widgetCategory.widgetNames.map(_WidgetListingAccordionItemContentButton.new).toList(),
    );
  }
}
