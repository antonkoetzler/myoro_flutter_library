part of '../myoro_slider_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSliderWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();
    return MyoroSlider(configuration: viewModel.configuration(context));
  }
}
