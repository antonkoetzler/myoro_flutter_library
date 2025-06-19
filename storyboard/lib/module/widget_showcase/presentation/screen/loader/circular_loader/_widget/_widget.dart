part of '../myoro_circular_loader_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCircularLoaderWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCircularLoaderWidgetShowcaseViewModel>();
    return MyoroCircularLoader(configuration: viewModel.configuration);
  }
}
