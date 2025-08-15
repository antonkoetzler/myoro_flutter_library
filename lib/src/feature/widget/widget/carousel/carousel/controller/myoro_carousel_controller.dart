import 'package:carousel_slider/carousel_controller.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCarousel].
class MyoroCarouselController {
  /// [CarouselSlider] controller.
  final carouselSliderController = CarouselSliderController();

  /// Goes to a specific page.
  void changePage(int pageNumber) {
    carouselSliderController.jumpToPage(pageNumber);
  }

  /// Goes to the previous page.
  void previousPage() {
    carouselSliderController.previousPage();
  }

  /// Goes to the next page.
  void nextPage() {
    carouselSliderController.nextPage();
  }
}
