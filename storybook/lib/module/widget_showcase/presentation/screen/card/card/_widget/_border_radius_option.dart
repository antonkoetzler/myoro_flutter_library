part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardThemeExtension.borderRadius] option of [MyoroCardWidgetShowcaseScreen].
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Border radius',
        enabled: viewModel.state.borderRadius != null,
        value: viewModel.state.borderRadius?.topLeft.x ?? 8.0,
        sliderOnChanged: (value) => viewModel.state.borderRadius = BorderRadius.circular(value),
        checkboxOnChanged: (enabled, value) =>
            viewModel.state.borderRadius = enabled ? BorderRadius.circular(value) : null,
      ),
    );
  }
}
