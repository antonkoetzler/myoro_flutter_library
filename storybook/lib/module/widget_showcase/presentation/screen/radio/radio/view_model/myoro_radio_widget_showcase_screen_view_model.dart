import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroRadioWidgetShowcaseScreen].
final class MyoroRadioWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroRadioWidgetShowcaseScreenState();

  /// [MyoroRadioConfiguration.onChanged]
  void onChanged(BuildContext context, bool enabled) {
    context.showSnackBar(snackBar: MyoroSnackBar(message: 'Radio ${enabled ? 'enabled' : 'disabled'}.'));
  }

  /// [_state] getter.
  MyoroRadioWidgetShowcaseScreenState get state {
    return _state;
  }
}
