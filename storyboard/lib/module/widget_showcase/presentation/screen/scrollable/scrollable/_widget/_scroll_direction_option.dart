part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring scroll direction.
final class _ScrollDirectionOption extends StatelessWidget {
  const _ScrollDirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final scrollDirection = state.scrollDirection;

    return AxisWidgetShowcaseOption(
      label: 'Scroll Direction',
      initialDirection: scrollDirection,
      onChanged: (Axis? value) => state.scrollDirection = value ?? Axis.vertical,
    );
  }
}
