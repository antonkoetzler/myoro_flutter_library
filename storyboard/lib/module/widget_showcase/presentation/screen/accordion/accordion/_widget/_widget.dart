part of '../myoro_accordion_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAccordionWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();
    return MyoroAccordion(controller: MyoroAccordionController(items: viewModel.items));
  }
}
