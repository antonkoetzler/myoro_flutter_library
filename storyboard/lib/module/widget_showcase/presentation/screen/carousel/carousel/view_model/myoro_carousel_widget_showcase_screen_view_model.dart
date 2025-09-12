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
      autoplay: state.autoplay,
      autoplayIntervalDuration: state.autoplayIntervalDuration,
      items: items,
    );
  }
}
