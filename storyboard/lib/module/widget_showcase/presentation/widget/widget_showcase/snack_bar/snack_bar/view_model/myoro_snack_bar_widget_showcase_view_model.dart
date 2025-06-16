import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSnackBarWidgetShowcase].
final class MyoroSnackBarWidgetShowcaseViewModel {
  /// State.
  final state = MyoroSnackBarWidgetShowcaseState();

  /// [MyoroSnackBarConfiguration] of the [MyoroSnackBar].
  MyoroSnackBarConfiguration configuration(Widget child) {
    return MyoroSnackBarConfiguration(
      snackBarType: state.snackBarType,
      showCloseButton: state.showCloseButton,
      message: state.message,
      child: state.childEnabled ? child : null,
    );
  }
}
