part of '../myoro_group_checkbox_widget_showcase_screen.dart';

/// [MyoroGroupCheckboxConfiguration.spacing] option in [MyoroGroupCheckboxWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseScreenViewModel>();

    return MyoroSlider(
      configuration: MyoroSliderConfiguration(label: 'Spacing', onChanged: (value) => viewModel.state.spacing = value),
    );
  }
}
