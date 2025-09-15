import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroCarouselWidgetShowcaseScreenViewModel].
final class MyoroCarouselWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCarouselConfiguration.direction]
  Axis _direction = MyoroCarouselConfiguration.directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroCarouselConfiguration.displayTraversalButtons]
  bool _displayTraversalButtons = MyoroCarouselConfiguration.displayTraversalButtonsDefaultValue;
  bool get displayTraversalButtons => _displayTraversalButtons;
  set displayTraversalButtons(bool displayTraversalButtons) {
    _displayTraversalButtons = displayTraversalButtons;
    notifyListeners();
  }

  /// [MyoroCarouselConfiguration.autoplay]
  bool _autoplay = MyoroCarouselConfiguration.autoplayDefaultValue;
  bool get autoplay => _autoplay;
  set autoplay(bool autoplay) {
    _autoplay = autoplay;
    notifyListeners();
  }

  /// [MyoroCarouselConfiguration.autoplayIntervalDuration]
  Duration _autoplayIntervalDuration = MyoroCarouselConfiguration.autoplayIntervalDurationDefaultValue;
  Duration get autoplayIntervalDuration => _autoplayIntervalDuration;
  set autoplayIntervalDuration(Duration autoplayIntervalDuration) {
    _autoplayIntervalDuration = autoplayIntervalDuration;
    notifyListeners();
  }

  /// [MyoroCarouselConfiguration.initialItem]
  int _initialItem = MyoroCarouselConfiguration.initialItemDefaultValue;
  int get initialItem => _initialItem;
  set initialItem(int initialItem) {
    _initialItem = initialItem;
    notifyListeners();
  }

  // Theme Extension Properties

  /// [MyoroCarouselThemeExtension.previousItemButtonIcon]
  IconData? _previousItemButtonIcon;
  IconData? get previousItemButtonIcon => _previousItemButtonIcon;
  set previousItemButtonIcon(IconData? previousItemButtonIcon) {
    _previousItemButtonIcon = previousItemButtonIcon;
    notifyListeners();
  }

  /// [MyoroCarouselThemeExtension.nextItemButtonIcon]
  IconData? _nextItemButtonIcon;
  IconData? get nextItemButtonIcon => _nextItemButtonIcon;
  set nextItemButtonIcon(IconData? nextItemButtonIcon) {
    _nextItemButtonIcon = nextItemButtonIcon;
    notifyListeners();
  }
}
