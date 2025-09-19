part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.disabledOpacity] option of [MyoroInputWidgetShowcaseScreen].
final class _DisabledOpacityOption extends StatelessWidget {
  const _DisabledOpacityOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Disabled opacity',
        enabled: viewModel.state.disabledOpacity != null,
        value: viewModel.state.disabledOpacity ?? 0.5,
        sliderOnChanged: (value) => viewModel.state.disabledOpacity = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.disabledOpacity = enabled ? value : null,
      ),
    );
  }
}
