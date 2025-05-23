part of '../myoro_carousel.dart';

/// Carousel [Widget] of the [MyoroCarousel].
final class _Carousel extends StatelessWidget {
  const _Carousel(this._controller);

  final MyoroCarouselController _controller;
  MyoroCarouselConfiguration get _configuration => _controller.configuration;
  CarouselSliderController get _carouselSliderController => _controller.carouselSliderController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _carouselSliderController,
      items: _configuration.items,
      options: CarouselOptions(
        initialPage: _configuration.initialItem,
        scrollDirection: _configuration.direction,
        autoPlay: _configuration.autoplay,
        autoPlayInterval: _configuration.autoplayIntervalDuration,
      ),
    );
  }
}
