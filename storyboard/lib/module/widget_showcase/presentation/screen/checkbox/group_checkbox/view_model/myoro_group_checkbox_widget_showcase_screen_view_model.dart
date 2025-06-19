import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroGroupCheckboxWidgetShowcaseScreen].
final class MyoroGroupCheckboxWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroGroupCheckboxWidgetShowcaseScreenState();
  MyoroGroupCheckboxWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroGroupCheckboxConfiguration] of the [MyoroGroupCheckbox].
  MyoroGroupCheckboxConfiguration configuration(BuildContext context) {
    return MyoroGroupCheckboxConfiguration(
      direction: _state.direction,
      spacing: _state.spacing,
      runSpacing: _state.runSpacing,
      onChanged: (key, checkboxes) => _onChanged(context, key, checkboxes),
    );
  }

  /// [MyoroGroupCheckboxConfiguration.onChanged]
  void _onChanged(BuildContext context, String key, MyoroGroupCheckboxItems checkboxes) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: '$key changed. It\'s value is now ${checkboxes[key]}.',
        ),
      ),
    );
  }
}
