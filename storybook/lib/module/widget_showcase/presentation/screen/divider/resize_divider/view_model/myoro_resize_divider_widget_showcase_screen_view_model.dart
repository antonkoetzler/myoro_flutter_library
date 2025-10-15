import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroResizeDividerWidgetShowcaseScreen].
final class MyoroResizeDividerWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroResizeDividerWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroResizeDividerWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroResizeDividerConfiguration.dragCallback]
  void dragCallback(DragUpdateDetails details) {
    _state.coverWidthController.value += details.localPosition.dx;
  }
}
