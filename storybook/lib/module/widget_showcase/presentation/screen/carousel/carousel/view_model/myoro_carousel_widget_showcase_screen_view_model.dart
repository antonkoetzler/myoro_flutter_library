import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroCarouselWidgetShowcaseScreen].
final class MyoroCarouselWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroCarouselWidgetShowcaseScreenState();
  MyoroCarouselWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCarouselThemeExtension] of the [MyoroCarousel].
  MyoroCarouselStyle get style {
    return MyoroCarouselStyle(
      previousItemButtonIcon: state.previousItemButtonIcon,
      nextItemButtonIcon: state.nextItemButtonIcon,
    );
  }
}
