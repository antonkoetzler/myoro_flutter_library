part of '../myoro_basic_divider_widget_showcase.dart';

/// [MyoroBasicDividerConfiguration.direction] option of [MyoroBasicDividerWidgetShowcase].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.direction,
      onChanged: (direction) => viewModel.direction = direction!,
    );
  }
}
