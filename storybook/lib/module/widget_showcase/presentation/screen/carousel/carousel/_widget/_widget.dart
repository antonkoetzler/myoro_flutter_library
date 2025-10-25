part of '../myoro_carousel_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCarouselWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        final style = viewModel.style;
        final direction = state.direction;
        final displayTraversalButtons = state.displayTraversalButtons;
        final initialItem = state.initialItem;
        final autoplay = state.autoplay;
        final autoplayIntervalDuration = state.autoplayIntervalDuration;
        const items = [_CarouselItem(kAreYouSillyCat), _CarouselItem(kHappyCat), _CarouselItem(kSnazzyCat)];

        return MyoroCarousel(
          style: style,
          direction: direction,
          displayTraversalButtons: displayTraversalButtons,
          initialItem: initialItem,
          autoplay: autoplay,
          autoplayIntervalDuration: autoplayIntervalDuration,
          items: items,
        );
      },
    );
  }
}
