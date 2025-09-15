part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderThemeExtension.indicatorTextStyle] option of [MyoroSlidersWidgetShowcaseScreen].
final class _IndicatorTextStyleOption extends StatelessWidget {
  const _IndicatorTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Indicator text style',
      selectedItem: viewModel.state.indicatorTextStyle,
      onChanged: (textStyle) => viewModel.state.indicatorTextStyle = textStyle,
      checkboxOnChanged:
          (enabled, _) => viewModel.state.indicatorTextStyle = enabled ? null : viewModel.state.indicatorTextStyle,
    );
  }
}
