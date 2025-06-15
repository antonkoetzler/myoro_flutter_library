part of '../myoro_group_checkbox_widget_showcase.dart';

/// [MyoroGroupCheckboxConfiguration.spacing] option in [MyoroGroupCheckboxWidgetShowcase].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseViewModel>();

    return MyoroSlider(
      configuration: MyoroSliderConfiguration(label: 'Spacing', onChanged: (value) => viewModel.spacing = value),
    );
  }
}
