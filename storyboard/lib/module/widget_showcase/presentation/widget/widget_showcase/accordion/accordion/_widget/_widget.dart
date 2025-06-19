part of '../myoro_accordion_widget_showcase.dart';

/// [WidgetShowcase.widget] of [MyoroAccordionWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseViewModel>();
    return MyoroAccordion(controller: MyoroAccordionController(items: viewModel.items));
  }
}
