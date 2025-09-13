part of '../main_screen.dart';

/// Body of [MainScreen].
final class _WidgetListingAccordion extends StatelessWidget {
  const _WidgetListingAccordion();

  @override
  Widget build(context) {
    return MyoroAccordion(
      configuration: MyoroAccordionConfiguration(
        items:
            MyoroWidgetListEnum.values.map((value) {
              return MyoroAccordionItem(
                title: _WidgetListingAccordionItemTitle(value),
                content: _WidgetListingAccordionItemContent(value),
              );
            }).toSet(),
      ),
    );
  }
}
