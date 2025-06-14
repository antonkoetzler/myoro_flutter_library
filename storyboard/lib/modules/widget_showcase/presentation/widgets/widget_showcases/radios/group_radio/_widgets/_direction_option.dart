part of '../myoro_group_radio_widget_showcase.dart';

/// [MyoroGroupRadioConfiguration.direction] option of [MyoroGroupRadioWidgetShowcase].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.state.direction,
      onChanged: (direction) => viewModel.state.direction = direction!,
    );
  }
}
