part of '../myoro_carousel.dart';

/// Controller of [MyoroCarousel].
abstract class MyoroCarouselController {
  /// Configuration.
  late MyoroCarouselConfiguration _configuration;

  /// [CarouselSlider] controller.
  final _carouselController = CarouselSliderController();
}
