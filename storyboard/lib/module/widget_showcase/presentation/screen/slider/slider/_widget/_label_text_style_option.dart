part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.labelTextStyle] option of [MyoroSliderWidgetShowcase].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (style) => viewModel.state.labelTextStyle = style,
      checkboxOnChanged: (enabled, style) => viewModel.state.labelTextStyle = enabled ? style : null,
    );
  }
}
