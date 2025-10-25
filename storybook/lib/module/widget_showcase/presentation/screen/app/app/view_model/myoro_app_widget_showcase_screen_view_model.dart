import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:storybook/storybook.dart';

part 'myoro_app_widget_showcase_screen_state.dart';

/// View model of [MyoroAppWidgetShowcaseScreen].
final class MyoroAppWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAppWidgetShowcaseScreenState();
  MyoroAppWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
