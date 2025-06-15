part of '../myoro_accordion_widget_showcase.dart';

/// [WidgetShowcase.widget] of [MyoroAccordionWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(_) {
    final items = List.generate(faker.randomGenerator.integer(10, min: 5), (_) => MyoroAccordionItem.fake());
    return MyoroAccordion(controller: MyoroAccordionController(items: items));
  }
}
