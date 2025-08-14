part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.labelTextStyle] option of [MyoroSlidersWidgetShowcaseScreen].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (style) => viewModel.state.labelTextStyle = style,
      checkboxOnChanged: (enabled, style) => viewModel.state.labelTextStyle = enabled ? style : null,
    );
  }
}
