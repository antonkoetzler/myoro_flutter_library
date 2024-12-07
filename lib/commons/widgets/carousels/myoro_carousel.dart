import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/constants.dart';

/// Slider carousel.
final class MyoroCarousel extends StatelessWidget {
  /// Direction that the carousel is sliding in.
  final Axis direction;

  /// Initial slide from [slides] starting in the carousel.
  final int initialSlide;

  /// If the carousel autoslides slides.
  final bool autoplay;

  /// [autoplay] interval duration.
  final Duration autoplayIntervalDuration;

  const MyoroCarousel({
    super.key,
    this.direction = Axis.horizontal,
    this.initialSlide = 0,
    this.autoplay = false,
    this.autoplayIntervalDuration = kMyoroCarouselAutoplayIntervalDuration,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
      ],
      options: CarouselOptions(
        autoPlay: autoplay,
        autoPlayInterval: autoplayIntervalDuration,
      ),
    );
  }
}
