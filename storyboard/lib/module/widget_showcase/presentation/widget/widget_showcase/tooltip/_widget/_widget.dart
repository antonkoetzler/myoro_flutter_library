part of '../myoro_tooltip_widget_showcase.dart';

/// [WidgetShowcaseConfiguration.widget] of [MyoroTooltipWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseViewModel>();

    return MyoroTooltip(
      configuration: viewModel.configuration,
      child: const MyoroCard(configuration: MyoroCardConfiguration(child: Text('Hover over me to show the tooltip!'))),
    );
  }
}
