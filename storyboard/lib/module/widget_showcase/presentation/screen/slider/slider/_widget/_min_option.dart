part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.min] option of [MyoroSlidersWidgetShowcaseScreen].
final class _MinOption extends StatelessWidget {
  const _MinOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Min value',
        initiallyEnabled: true,
        initialValue: viewModel.state.min,
        sliderOnChanged: (value) => viewModel.state.min = value,
      ),
    );
  }
}
