import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCarousel].
class MyoroCarouselController implements MyoroCarouselInterface {
  MyoroCarouselController({required MyoroCarouselConfiguration configuration}) {
    state = MyoroCarouselState(configuration);
  }

  late final MyoroCarouselState state;

  @override
  void changePage(int pageNumber) => state.carouselSliderController.jumpToPage(pageNumber);

  @override
  void previousPage() => state.carouselSliderController.previousPage();

  @override
  void nextPage() => state.carouselSliderController.nextPage();
}
