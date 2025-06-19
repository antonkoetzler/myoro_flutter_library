import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroResizeDividerWidgetShowcaseScreen].
final class MyoroResizeDividerWidgetShowcaseScreenViewModel {
  final _state = MyoroResizeDividerWidgetShowcaseScreenState();
  MyoroResizeDividerWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroResizeDividerConfiguration] of the [MyoroResizeDivider].
  MyoroResizeDividerConfiguration get configuration {
    return MyoroResizeDividerConfiguration(
      basicDividerConfiguration: _state.basicDividerViewModel.configuration,
      dragCallback: _dragCallback,
    );
  }

  /// [MyoroResizeDividerConfiguration.dragCallback]
  void _dragCallback(DragUpdateDetails details) {
    _state.coverWidthController.value += details.localPosition.dx;
  }
}
