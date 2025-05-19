part of '../myoro_carousel.dart';

/// Carousel [Widget] of the [MyoroCarousel].
final class _Carousel extends StatelessWidget {
  final MyoroCarouselController _controller;

  const _Carousel(this._controller);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _carouselController,
      items: _configuration.items,
      options: CarouselOptions(
        initialPage: _configuration.initialItem,
        scrollDirection: _configuration.direction,
        autoPlay: _configuration.autoplay,
        autoPlayInterval: _configuration.autoplayIntervalDuration,
      ),
    );
  }

  MyoroCarouselConfiguration get _configuration => _controller._configuration;
  CarouselSliderController get _carouselController => _controller._carouselController;
}
