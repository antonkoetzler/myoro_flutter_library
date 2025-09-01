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
                titleBuilder: (_) => _WidgetListingAccordionItemTitle(value),
                contentBuilder: (_) => _WidgetListingAccordionItemContent(value),
              );
            }).toSet(),
      ),
    );
  }
}
