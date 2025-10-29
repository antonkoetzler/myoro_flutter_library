import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroSnackBarContainerWidgetShowcaseScreen].
final class MyoroSnackBarContainerWidgetShowcaseScreenViewModel extends ChangeNotifier {
  /// [Duration] that the snack bar will be shown for.
  Duration _duration = MyoroSnackBarContainer.durationDefaultValue;
  Duration get duration => _duration;
  set duration(Duration duration) {
    _duration = duration;
    notifyListeners();
  }

  /// Shows the [MyoroSnackBar].
  void showSnackBar(BuildContext context) {
    context.showSnackBar(duration: _duration, snackBar: const MyoroSnackBar(message: 'Snack bars!'));
  }
}
