part of '../myoro_basic_divider_widget_showcase_screen.dart';

/// [MyoroBasicDividerConfiguration.direction] option of [MyoroBasicDividerWidgetShowcaseScreen].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseScreenViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.state.direction,
      onChanged: (direction) => viewModel.state.direction = direction!,
    );
  }
}
