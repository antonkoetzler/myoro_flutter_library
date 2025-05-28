part of '../myoro_icon_text_button_widget_showcase.dart';

/// [MyoroIconTextButtonConfiguration.spacing] option of [MyoroIconTextButtonWidgetShowcase].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();
    return TogglableSliderWidgetShowcaseOption(
      label: 'Spacing',
      checkboxOnChanged: (enabled, value) => viewModel.spacing = enabled ? value : null,
      sliderOnChanged: (value) => viewModel.spacing = value,
    );
  }
}
