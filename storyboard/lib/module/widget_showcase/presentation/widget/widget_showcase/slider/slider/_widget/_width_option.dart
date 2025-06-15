part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.width] option of [MyoroSliderWidgetShowcase].
final class _WidthOption extends StatelessWidget {
  const _WidthOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Fixed width.',
        sliderOnChanged: (value) => viewModel.state.width = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.width = enabled ? value : null,
      ),
    );
  }
}
