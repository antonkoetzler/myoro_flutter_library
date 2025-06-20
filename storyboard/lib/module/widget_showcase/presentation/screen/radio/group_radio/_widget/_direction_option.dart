part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [MyoroGroupRadioConfiguration.direction] option of [MyoroGroupRadioWidgetShowcaseScreen].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.state.direction,
      onChanged: (direction) => viewModel.state.direction = direction!,
    );
  }
}
