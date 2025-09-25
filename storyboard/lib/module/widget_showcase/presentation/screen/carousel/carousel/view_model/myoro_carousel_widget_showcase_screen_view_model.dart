import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCarouselWidgetShowcaseScreen].
final class MyoroCarouselWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroCarouselWidgetShowcaseScreenState();
  MyoroCarouselWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCarouselConfiguration] of the [MyoroCarousel].
  MyoroCarouselConfiguration buildConfiguration(List<Widget> items) {
    return MyoroCarouselConfiguration(
      direction: state.direction,
      displayTraversalButtons: state.displayTraversalButtons,
      initialItem: state.initialItem,
      autoplay: state.autoplay,
      autoplayIntervalDuration: state.autoplayIntervalDuration,
      items: items,
    );
  }

  /// [MyoroCarouselThemeExtension] of the [MyoroCarousel].
  MyoroCarouselThemeExtension buildStyle(BuildContext context) {
    const carouselThemeExtension = MyoroCarouselThemeExtension.builder();

    return carouselThemeExtension.copyWith(
      previousItemButtonIcon: state.previousItemButtonIcon,
      nextItemButtonIcon: state.nextItemButtonIcon,
    );
  }
}
