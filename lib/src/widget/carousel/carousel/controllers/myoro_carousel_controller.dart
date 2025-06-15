import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCarousel].
class MyoroCarouselController implements MyoroCarouselControllerInterface {
  final state = MyoroCarouselControllerState();

  @override
  void changePage(int pageNumber) => state.carouselSliderController.jumpToPage(pageNumber);

  @override
  void previousPage() => state.carouselSliderController.previousPage();

  @override
  void nextPage() => state.carouselSliderController.nextPage();
}
