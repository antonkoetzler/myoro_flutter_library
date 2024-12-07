import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/constants.dart';

/// Slider carousel.
final class MyoroCarousel extends StatelessWidget {
  /// Direction that the carousel is sliding in.
  final Axis direction;

  /// Initial item from [slides] starting in the carousel.
  final int initialItem;

  /// If the carousel autoslides [items].
  final bool autoplay;

  /// [autoplay] interval duration.
  final Duration autoplayIntervalDuration;

  /// Slides of the carousel.
  final List<Widget> items;

  const MyoroCarousel({
    super.key,
    this.direction = Axis.horizontal,
    this.initialItem = 0,
    this.autoplay = false,
    this.autoplayIntervalDuration = kMyoroCarouselAutoplayIntervalDuration,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        autoPlay: autoplay,
        autoPlayInterval: autoplayIntervalDuration,
      ),
    );
  }
}
