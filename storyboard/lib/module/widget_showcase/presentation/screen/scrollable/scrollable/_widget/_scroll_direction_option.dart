part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring scroll direction.
final class _ScrollDirectionOption extends StatelessWidget {
  const _ScrollDirectionOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return AxisWidgetShowcaseOption(
      label: 'Scroll Direction',
      initialDirection: viewModel.scrollDirection,
      onChanged: (Axis? value) => viewModel.setScrollDirection(value ?? Axis.vertical),
    );
  }
}
