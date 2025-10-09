import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_scrollables_widget_showcase_screen_state.dart';

/// View model for [MyoroScrollablesWidgetShowcaseScreen].
final class MyoroScrollablesWidgetShowcaseScreenViewModel extends ChangeNotifier {
  /// State.
  final _state = MyoroScrollablesWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroScrollablesWidgetShowcaseScreenState get state => _state;

  // Configuration getters
  MyoroSingleChildScrollableConfiguration get singleChildConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;

    return MyoroSingleChildScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: const MyoroScrollableGradientConfiguration(),
    );
  }

  MyoroListScrollableConfiguration get listConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;

    return MyoroListScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: const MyoroScrollableGradientConfiguration(),
    );
  }

  MyoroGridScrollableConfiguration get gridConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;

    return MyoroGridScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: const MyoroScrollableGradientConfiguration(),
    );
  }

  MyoroSliverScrollableConfiguration get sliverConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;

    return MyoroSliverScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: const MyoroScrollableGradientConfiguration(),
    );
  }

  // Style getter
  MyoroScrollableStyle get style {
    final gradientSize = _state.gradientSize;
    final gradientColor = _state.gradientColor;

    return MyoroScrollableStyle(gradientSize: gradientSize, gradientColor: gradientColor);
  }
}
