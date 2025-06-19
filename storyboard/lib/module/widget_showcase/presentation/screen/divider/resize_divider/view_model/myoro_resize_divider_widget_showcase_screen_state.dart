import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroResizeDividerWidgetShowcaseScreenViewModel].
final class MyoroResizeDividerWidgetShowcaseScreenState {
  /// View model of [MyoroBasicDividerWidgetShowcaseScreen].
  final _basicDividerViewModel = MyoroBasicDividerWidgetShowcaseScreenViewModel();
  MyoroBasicDividerWidgetShowcaseScreenViewModel get basicDividerViewModel => _basicDividerViewModel;

  /// [ValueNotifier] controlling the width of [_Cover].
  final _coverWidthController = ValueNotifier<double>(double.infinity);
  ValueNotifier<double> get coverWidthController => _coverWidthController;

  /// Dispose function.
  void dispose() {
    _basicDividerViewModel.dispose();
    _coverWidthController.dispose();
  }
}
