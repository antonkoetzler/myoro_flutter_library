part of '../myoro_accordions_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAccordionWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();
    return MyoroSingleAccordion(
      configuration: viewModel.buildSingleConfiguration(),
      themeExtension: viewModel.buildThemeExtension(context),
    );
  }
}
