part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [MyoroGroupRadioConfiguration.spacing] option of [MyoroGroupRadioWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Spacing',
        sliderOnChanged: (value) => viewModel.state.spacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.spacing = enabled ? value : null,
      ),
    );
  }
}
