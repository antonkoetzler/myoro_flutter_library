part of '../myoro_carousel_widget_showcase.dart';

/// [MyoroCarouselConfiguration.displayTraversalButtons] option of [MyoroCarouselWidgetShowcase].
final class _DisplayTraversalButtonsOption extends StatelessWidget {
  const _DisplayTraversalButtonsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Display traversal buttons?',
        onChanged: (value) => viewModel.displayTraversalButtons = value,
      ),
    );
  }
}
