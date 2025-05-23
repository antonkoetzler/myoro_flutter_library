import 'package:carousel_slider/carousel_slider.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroCarouselController].
class MyoroCarouselState {
  MyoroCarouselState(this.configuration);

  /// Configuration.
  late MyoroCarouselConfiguration configuration;

  /// [CarouselSlider] controller.
  final carouselSliderController = CarouselSliderController();
}
