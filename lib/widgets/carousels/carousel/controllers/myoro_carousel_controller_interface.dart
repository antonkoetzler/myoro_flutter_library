import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroCarouselController].
abstract interface class MyoroCarouselControllerInterface {
  /// Goes to a specific page.
  void changePage(int pageNumber);

  /// Goes to the previous page.
  void previousPage();

  /// Goes to the next page.
  void nextPage();
}
