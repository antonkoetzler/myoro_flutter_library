part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroScrollable.direction] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _DirectionOption extends StatelessWidget {
  const _DirectionOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return AxisWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionScrollableDirectionLabel,
      initialDirection: state.direction,
      onChanged: (direction) {
        if (direction != null) {
          state.direction = direction;
        }
      },
    );
  }
}
