part of '../myoro_group_checkbox_widget_showcase.dart';

/// [MyoroGroupCheckboxConfiguration.runSpacing] option in [MyoroGroupCheckboxWidgetShowcase].
final class _RunSpacingOption extends StatelessWidget {
  const _RunSpacingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseViewModel>();

    return MyoroSlider(
      configuration: MyoroSliderConfiguration(label: 'Run spacing', onChanged: (value) => viewModel.runSpacing = value),
    );
  }
}
