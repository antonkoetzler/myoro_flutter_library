part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.displayTraversalButtons] option of [MyoroCarouselWidgetShowcaseScreen].
final class _DisplayTraversalButtonsOption extends StatelessWidget {
  const _DisplayTraversalButtonsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Display traversal buttons?',
        onChanged: (value) => viewModel.state.displayTraversalButtons = value,
      ),
    );
  }
}
