part of '../main_screen.dart';

/// Body of [MainScreen].
final class _WidgetListingAccordion extends StatelessWidget {
  const _WidgetListingAccordion();

  @override
  Widget build(context) {
    return MyoroAccordion(
      controller: MyoroAccordionController(items: MyoroWidgetListEnum.values.map(_buildAccordionItem).toSet()),
    );
  }

  MyoroAccordionItem _buildAccordionItem(MyoroWidgetListEnum widgetCategory) {
    return MyoroAccordionItem(
      titleBuilder: (_) => _WidgetListingAccordionItemTitle(widgetCategory),
      contentBuilder: (_) => _WidgetListingAccordionItemContent(widgetCategory),
    );
  }
}
