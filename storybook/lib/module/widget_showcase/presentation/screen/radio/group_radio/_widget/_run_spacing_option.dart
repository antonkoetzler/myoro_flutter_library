part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [MyoroGroupRadioConfiguration.runRunSpacing] option of [MyoroGroupRadioWidgetShowcaseScreen].
final class _RunSpacingOption extends StatelessWidget {
  const _RunSpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Run spacing.',
        sliderOnChanged: (value) => viewModel.state.runSpacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.runSpacing = enabled ? value : null,
      ),
    );
  }
}
