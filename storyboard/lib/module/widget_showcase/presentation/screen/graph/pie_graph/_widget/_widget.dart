part of '../myoro_pie_graph_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroPieGraphWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroPieGraph(
          configuration: MyoroPieGraphConfiguration(
            typeEnum: viewModel.state.typeEnum,
            centerWidget: viewModel.state.centerWidgetEnabled ? _CenterWidget() : null,
            items: List.generate(faker.randomGenerator.integer(5), (_) => MyoroPieGraphItem.fake()),
          ),
        );
      },
    );
  }
}
