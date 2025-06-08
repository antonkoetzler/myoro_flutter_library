part of '../myoro_group_checkbox_widget_showcase.dart';

/// [MyoroGroupCheckboxConfiguration.direction] option of [MyoroGroupCheckboxWidgetShowcase].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseViewModel>();

    return AxisWidgetShowcaseOption(
      initialDirection: viewModel.direction,
      onChanged: (direction) => viewModel.direction = direction!,
    );
  }
}
