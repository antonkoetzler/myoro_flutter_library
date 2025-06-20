part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTooltipWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseScreenViewModel>();

    return MyoroTooltip(
      configuration: viewModel.configuration,
      child: const MyoroCard(configuration: MyoroCardConfiguration(child: Text('Hover over me to show the tooltip!'))),
    );
  }
}
