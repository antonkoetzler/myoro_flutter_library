part of '../myoro_carousel_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreen.widget] of [MyoroCarouselWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroCarousel(
          configuration: viewModel.configuration(const [
            _CarouselItem(kAreYouSillyCat),
            _CarouselItem(kHappyCat),
            _CarouselItem(kSnazzyCat),
          ]),
        );
      },
    );
  }
}
