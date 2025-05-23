import 'package:carousel_slider/carousel_slider.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCarousel].
class MyoroCarouselController {
  MyoroCarouselController(this.configuration);

  /// Configuration.
  MyoroCarouselConfiguration configuration;

  /// [CarouselSlider] controller.
  final _carouselSliderController = CarouselSliderController();
  CarouselSliderController get carouselSliderController => _carouselSliderController;
}
