part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.spacing] option of [MyoroInputWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Spacing',
        initiallyEnabled: viewModel.state.spacing != null,
        initialValue: viewModel.state.spacing ?? 10.0,
        sliderOnChanged: (value) => viewModel.state.spacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.spacing = enabled ? value : null,
      ),
    );
  }
}
