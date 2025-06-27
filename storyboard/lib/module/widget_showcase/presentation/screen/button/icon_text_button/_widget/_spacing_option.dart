part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.spacing] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final spacing = state.spacing;

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Spacing',
        initialValue: spacing ?? SliderWidgetShowcaseOptionConfiguration.initialValueDefaultValue,
        sliderOnChanged: (value) => state.spacing = value,
        checkboxOnChanged: (enabled, value) => state.spacing = enabled ? value : null,
      ),
    );
  }
}
