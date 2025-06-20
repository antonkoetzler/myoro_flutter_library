import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroRadioWidgetShowcaseScreen].
final class MyoroRadioWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroRadioWidgetShowcaseScreenState();
  MyoroRadioWidgetShowcaseScreenState get state => _state;

  /// [MyoroRadioConfiguration] of the [MyoroRadio].
  MyoroRadioConfiguration configuration(BuildContext context) {
    return MyoroRadioConfiguration(
      label: state.label,
      labelTextStyle: state.labelTextStyle,
      onChanged: state.onChangedEnabled ? (enabled) => _onChanged(context, enabled) : null,
    );
  }

  /// [MyoroRadioConfiguration.onChanged]
  void _onChanged(BuildContext context, bool enabled) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(message: 'Radio ${enabled ? 'enabled' : 'disabled'}.'),
      ),
    );
  }
}
