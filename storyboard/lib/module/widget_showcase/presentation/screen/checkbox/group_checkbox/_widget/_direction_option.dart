part of '../myoro_group_checkbox_widget_showcase_screen.dart';

/// [MyoroGroupCheckboxConfiguration.direction] option of [MyoroGroupCheckboxWidgetShowcaseScreen].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseScreenViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.state.direction,
      onChanged: (direction) => viewModel.state.direction = direction!,
    );
  }
}
