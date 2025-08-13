part of '../myoro_slider_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSliderWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return ListenableBuilder(listenable: state, builder: (_, _) => MyoroSlider(configuration: viewModel.configuration));
  }
}
