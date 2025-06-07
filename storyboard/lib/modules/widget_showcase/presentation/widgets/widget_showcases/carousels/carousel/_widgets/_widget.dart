part of '../myoro_carousel_widget_showcase.dart';

/// [WidgetShowcaseScreen.widget] of [MyoroCarouselWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroCarousel(
          configuration: MyoroCarouselConfiguration(
            direction: viewModel.direction,
            displayTraversalButtons: viewModel.displayTraversalButtons,
            autoplay: viewModel.autoplay,
            autoplayIntervalDuration: viewModel.autoplayIntervalDuration,
            items: const [_CarouselItem(kAreYouSillyCat), _CarouselItem(kHappyCat), _CarouselItem(kSnazzyCat)],
          ),
        );
      },
    );
  }
}
