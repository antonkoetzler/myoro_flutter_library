part of '../myoro_sliders_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSlidersWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSlidersWidgetShowcaseScreenThemeExtension>();
    final spacing = themeExtension.spacing;

    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: spacing,
          children: [
            MyoroSlider(
              label: state.label,
              min: state.min,
              max: state.max,
              value: state.sliderValue,
              onChanged: (value) => state.sliderValue = value,
            ),
            MyoroRangeSlider(
              label: state.label,
              min: state.min,
              max: state.max,
              values: state.rangeSliderValues,
              onChanged: (values) => state.rangeSliderValues = values,
            ),
          ],
        );
      },
    );
  }
}
