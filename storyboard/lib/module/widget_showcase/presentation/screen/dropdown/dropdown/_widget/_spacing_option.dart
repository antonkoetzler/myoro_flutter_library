part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownThemeExtension.spacing] option of [MyoroDropdownsWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Spacing',
        enabled: viewModel.state.spacing != null,
        value: viewModel.state.spacing ?? 10.0,
        sliderOnChanged: (value) => viewModel.state.spacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.spacing = enabled ? value : null,
      ),
    );
  }
}
