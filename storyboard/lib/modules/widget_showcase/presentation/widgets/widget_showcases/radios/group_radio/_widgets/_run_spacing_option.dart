part of '../myoro_group_radio_widget_showcase.dart';

/// [MyoroGroupRadioConfiguration.runRunSpacing] option of [MyoroGroupRadioWidgetShowcase].
final class _RunSpacingOption extends StatelessWidget {
  const _RunSpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Run spacing.',
        sliderOnChanged: (value) => viewModel.state.runSpacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.runSpacing = enabled ? value : null,
      ),
    );
  }
}
