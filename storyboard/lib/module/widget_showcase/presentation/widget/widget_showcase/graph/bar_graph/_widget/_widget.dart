part of '../myoro_bar_graph_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroBarGraphWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBarGraphWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) => MyoroBarGraph(configuration: viewModel.configuration),
    );
  }
}
