part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.max] option of [MyoroSlidersWidgetShowcaseScreen].
final class _MaxOption extends StatelessWidget {
  const _MaxOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Max value',
        enabled: true,
        value: viewModel.state.max,
        sliderOnChanged: (value) => viewModel.state.max = value,
      ),
    );
  }
}
