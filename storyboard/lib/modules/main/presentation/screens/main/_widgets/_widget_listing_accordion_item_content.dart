part of '../main_screen.dart';

/// [MyoroAccordionItem.contentBuilder] of a [MyoroAccordion] item in [_Accordion].
final class _WidgetListingAccordionItemContent extends StatelessWidget {
  const _WidgetListingAccordionItemContent(this._widgetCategory);

  final MyoroWidgetListEnum _widgetCategory;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MainScreenThemeExtension>();

    return Padding(
      padding: themeExtension.widgetListingAccordionItemContent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.spacing,
        children: _widgetCategory.widgetNames.map(_WidgetListingAccordionItemContentButton.new).toList(),
      ),
    );
  }
}
