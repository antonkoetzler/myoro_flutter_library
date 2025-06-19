import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCardWidgetShowcaseScreen].
final class MyoroCardWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCardWidgetShowcaseScreenState();
  MyoroCardWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCardConfiguration] of the [MyoroCard].
  MyoroCardConfiguration configuration(Widget child) {
    return MyoroCardConfiguration(
      title: _state.title,
      titleTextStyle: _state.titleTextStyle,
      padding: _state.padding,
      constraints: _state.constraints,
      child: child,
    );
  }
}
