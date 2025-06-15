part of '../myoro_radio_widget_showcase.dart';

/// [MyoroRadioConfiguration.labelTextStyle] option of [MyoroRadioWidgetShowcase].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (style) => viewModel.state.labelTextStyle = style,
      checkboxOnChanged: (enabled, style) => viewModel.state.labelTextStyle = enabled ? style : null,
    );
  }
}
