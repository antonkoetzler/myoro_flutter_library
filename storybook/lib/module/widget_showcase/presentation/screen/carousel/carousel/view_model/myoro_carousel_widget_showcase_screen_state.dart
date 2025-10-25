import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroCarouselWidgetShowcaseScreenViewModel].
final class MyoroCarouselWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCarousel.direction]
  Axis _direction = MyoroCarousel.directionDefaultValue;

  /// [MyoroCarousel.displayTraversalButtons]
  bool _displayTraversalButtons = MyoroCarousel.displayTraversalButtonsDefaultValue;

  /// [MyoroCarousel.autoplay]
  bool _autoplay = false;

  /// [MyoroCarousel.autoplayIntervalDuration]
  Duration _autoplayIntervalDuration = MyoroCarousel.autoplayIntervalDurationDefaultValue;

  /// [MyoroCarousel.initialItem]
  int _initialItem = MyoroCarousel.initialItemDefaultValue;

  /// [MyoroCarouselThemeExtension.previousItemButtonIcon]
  IconData? _previousItemButtonIcon;

  /// [MyoroCarouselThemeExtension.nextItemButtonIcon]
  IconData? _nextItemButtonIcon;

  /// [_direction] getter.
  Axis get direction {
    return _direction;
  }

  /// [_displayTraversalButtons] getter.
  bool get displayTraversalButtons {
    return _displayTraversalButtons;
  }

  /// [_autoplay] getter.
  bool get autoplay {
    return _autoplay;
  }

  /// [_autoplayIntervalDuration] getter.
  Duration get autoplayIntervalDuration {
    return _autoplayIntervalDuration;
  }

  /// [_initialItem] getter.
  int get initialItem {
    return _initialItem;
  }

  /// [_previousItemButtonIcon] getter.
  IconData? get previousItemButtonIcon {
    return _previousItemButtonIcon;
  }

  /// [_nextItemButtonIcon] getter.
  IconData? get nextItemButtonIcon {
    return _nextItemButtonIcon;
  }

  /// [_direction] setter.
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [_displayTraversalButtons] setter.
  set displayTraversalButtons(bool displayTraversalButtons) {
    _displayTraversalButtons = displayTraversalButtons;
    notifyListeners();
  }

  /// [_autoplay] setter.
  set autoplay(bool autoplay) {
    _autoplay = autoplay;
    notifyListeners();
  }

  /// [_autoplayIntervalDuration] setter.
  set autoplayIntervalDuration(Duration autoplayIntervalDuration) {
    _autoplayIntervalDuration = autoplayIntervalDuration;
    notifyListeners();
  }

  /// [_initialItem] setter.
  set initialItem(int initialItem) {
    _initialItem = initialItem;
    notifyListeners();
  }

  /// [_previousItemButtonIcon] setter.
  set previousItemButtonIcon(IconData? previousItemButtonIcon) {
    _previousItemButtonIcon = previousItemButtonIcon;
    notifyListeners();
  }

  /// [_nextItemButtonIcon] setter.
  set nextItemButtonIcon(IconData? nextItemButtonIcon) {
    _nextItemButtonIcon = nextItemButtonIcon;
    notifyListeners();
  }
}
