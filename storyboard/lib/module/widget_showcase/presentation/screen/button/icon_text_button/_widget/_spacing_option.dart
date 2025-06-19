part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.spacing] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Spacing',
        checkboxOnChanged: (enabled, value) => viewModel.state.spacing = enabled ? value : null,
        sliderOnChanged: (value) => viewModel.state.spacing = value,
      ),
    );
  }
}
