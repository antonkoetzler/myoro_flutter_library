part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTagThemeExtension.borderRadius] option of [MyoroTagWidgetShowcaseScreen].
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionTagBorderRadiusLabel,
        enabled: viewModel.state.borderRadius != null,
        value: viewModel.state.borderRadius?.topLeft.x ?? 8.0,
        sliderOnChanged: (value) => viewModel.state.borderRadius = BorderRadius.circular(value),
        checkboxOnChanged: (enabled, value) =>
            viewModel.state.borderRadius = enabled ? BorderRadius.circular(value) : null,
      ),
    );
  }
}
