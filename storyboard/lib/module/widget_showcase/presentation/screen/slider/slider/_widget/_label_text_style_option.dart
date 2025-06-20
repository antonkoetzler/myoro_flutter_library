part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.labelTextStyle] option of [MyoroSliderWidgetShowcaseScreen].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (style) => viewModel.state.labelTextStyle = style,
      checkboxOnChanged: (enabled, style) => viewModel.state.labelTextStyle = enabled ? style : null,
    );
  }
}
