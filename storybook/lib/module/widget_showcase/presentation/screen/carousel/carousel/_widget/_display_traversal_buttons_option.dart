part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.displayTraversalButtons] option of [MyoroCarouselWidgetShowcaseScreen].
final class _DisplayTraversalButtonsOption extends StatelessWidget {
  const _DisplayTraversalButtonsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final displayTraversalButtons = state.displayTraversalButtons;
    return MyoroCheckbox(
      label: 'Display traversal buttons?',
      value: displayTraversalButtons,
      onChanged: (value) => state.displayTraversalButtons = value,
    );
  }
}
