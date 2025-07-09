part of '../myoro_carousel.dart';

/// Carousel [Widget] of the [MyoroCarousel].
final class _Carousel extends StatelessWidget {
  const _Carousel(this._configuration, this._controller);

  final MyoroCarouselConfiguration _configuration;
  final CarouselSliderController _controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _controller,
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
