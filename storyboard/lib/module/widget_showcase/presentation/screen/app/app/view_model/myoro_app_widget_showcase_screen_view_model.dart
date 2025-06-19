import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroAppWidgetShowcaseScreen].
final class MyoroAppWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAppWidgetShowcaseScreenState();
  MyoroAppWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroAppConfiguration] of the [MyoroApp].
  MyoroAppConfiguration configuration(Widget home) {
    return MyoroAppConfiguration(themeMode: _state.themeMode, home: home);
  }
}
