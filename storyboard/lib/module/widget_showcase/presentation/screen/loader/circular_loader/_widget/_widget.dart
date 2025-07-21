part of '../myoro_circular_loader_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCircularLoaderWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCircularLoaderWidgetShowcaseScreenViewModel>();
    return MyoroCircularLoader(configuration: viewModel.configuration);
  }
}
