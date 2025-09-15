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
              configuration: viewModel.sliderConfiguration,
              themeExtension: viewModel.buildThemeExtension(context),
            ),
            MyoroRangeSlider(
              configuration: viewModel.rangeSliderConfiguration,
              themeExtension: viewModel.buildThemeExtension(context),
            ),
          ],
        );
      },
    );
  }
}
