part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.width] option of [MyoroSliderWidgetShowcaseScreen].
final class _WidthOption extends StatelessWidget {
  const _WidthOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Fixed width.',
        sliderOnChanged: (value) => viewModel.state.width = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.width = enabled ? value : null,
      ),
    );
  }
}
