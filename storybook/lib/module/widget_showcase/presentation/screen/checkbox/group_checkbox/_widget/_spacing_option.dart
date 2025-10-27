part of '../myoro_group_checkbox_widget_showcase_screen.dart';

/// [MyoroGroupCheckboxConfiguration.spacing] option in [MyoroGroupCheckboxWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  const _SpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final spacing = state.spacing;

    return MyoroSlider(label: 'Spacing', value: spacing, onChanged: (value) => viewModel.state.spacing = value);
  }
}
