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
    final gradientEnabled = _state.gradientEnabled;
    final gradientSize = _state.gradientSize;
    final gradientColor = _state.gradientColor;

    return MyoroSingleChildScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: MyoroScrollableGradientConfiguration(
        enabled: gradientEnabled,
        size: gradientSize,
        color: gradientColor,
      ),
    );
  }

  MyoroListScrollableConfiguration get listConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;
    final gradientEnabled = _state.gradientEnabled;
    final gradientSize = _state.gradientSize;
    final gradientColor = _state.gradientColor;

    return MyoroListScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: MyoroScrollableGradientConfiguration(
        enabled: gradientEnabled,
        size: gradientSize,
        color: gradientColor,
      ),
    );
  }

  MyoroGridScrollableConfiguration get gridConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;
    final gradientEnabled = _state.gradientEnabled;
    final gradientSize = _state.gradientSize;
    final gradientColor = _state.gradientColor;

    return MyoroGridScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: MyoroScrollableGradientConfiguration(
        enabled: gradientEnabled,
        size: gradientSize,
        color: gradientColor,
      ),
    );
  }

  MyoroSliverScrollableConfiguration get sliverConfiguration {
    final scrollDirection = _state.scrollDirection;
    final physics = _state.physics;
    final gradientEnabled = _state.gradientEnabled;
    final gradientSize = _state.gradientSize;
    final gradientColor = _state.gradientColor;

    return MyoroSliverScrollableConfiguration(
      scrollDirection: scrollDirection,
      physics: physics,
      gradientConfiguration: MyoroScrollableGradientConfiguration(
        enabled: gradientEnabled,
        size: gradientSize,
        color: gradientColor,
      ),
    );
  }

  // Style getter
  MyoroScrollableStyle get style {
    final backgroundColor = _state.backgroundColor;
    final borderRadius = _state.borderRadius;
    final padding = _state.padding;
    final margin = _state.margin;

    return MyoroScrollableStyle(
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
    );
  }
}
