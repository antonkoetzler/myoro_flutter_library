import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSnackBarWidgetShowcaseScreen].
final class MyoroSnackBarWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroSnackBarWidgetShowcaseScreenState();
  MyoroSnackBarWidgetShowcaseScreenState get state => _state;

  /// [MyoroSnackBarConfiguration] of the [MyoroSnackBar].
  MyoroSnackBarConfiguration buildConfiguration(Widget child) {
    return MyoroSnackBarConfiguration(
      snackBarType: state.snackBarType,
      showCloseButton: state.showCloseButton,
      message: state.message,
      child: state.childEnabled ? child : null,
    );
  }
}
