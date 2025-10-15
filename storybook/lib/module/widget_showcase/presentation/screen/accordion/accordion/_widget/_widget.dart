part of '../myoro_accordions_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAccordionWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: spacing,
          children: [
            Flexible(
              child: MyoroSingleAccordion(
                configuration: viewModel.singleConfiguration,
                style: viewModel.buildStyle(context),
              ),
            ),
            Flexible(
              child: MyoroMultiAccordion(
                configuration: viewModel.multiConfiguration,
                style: viewModel.buildStyle(context),
              ),
            ),
          ],
        );
      },
    );
  }
}
