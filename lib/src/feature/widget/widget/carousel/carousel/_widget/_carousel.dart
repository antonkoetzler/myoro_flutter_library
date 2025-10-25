part of '../myoro_carousel.dart';

/// Carousel [Widget] of the [MyoroCarousel].
final class _Carousel extends StatelessWidget {
  const _Carousel(
    this._controller,
    this._direction,
    this._initialItem,
    this._autoplay,
    this._autoplayIntervalDuration,
    this._items,
  );

  final CarouselSliderController _controller;
  final Axis _direction;
  final int _initialItem;
  final bool _autoplay;
  final Duration _autoplayIntervalDuration;
  final List<Widget> _items;

  @override
  Widget build(context) {
    return CarouselSlider(
      carouselController: _controller,
      items: _items,
      options: CarouselOptions(
        initialPage: _initialItem,
        scrollDirection: _direction,
        autoPlay: _autoplay,
        autoPlayInterval: _autoplayIntervalDuration,
      ),
    );
  }
}
