part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTagThemeExtension.spacing] option of [MyoroTagWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionTagSpacingLabel,
        enabled: viewModel.state.spacing != null,
        value: viewModel.state.spacing ?? 8.0,
        sliderOnChanged: (value) => viewModel.state.spacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.spacing = enabled ? value : null,
      ),
    );
  }
}
