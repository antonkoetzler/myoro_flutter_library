part of '../myoro_group_checkbox_widget_showcase_screen.dart';

/// [MyoroGroupCheckboxConfiguration.runSpacing] option in [MyoroGroupCheckboxWidgetShowcaseScreen].
final class _RunSpacingOption extends StatelessWidget {
  const _RunSpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseScreenViewModel>();

    return MyoroSlider(
      configuration: MyoroSliderConfiguration(
        label: 'Run spacing',
        onChanged: (value) => viewModel.state.runSpacing = value,
      ),
    );
  }
}
