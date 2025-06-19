import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCheckboxWidgetShowcaseScreen].
final class MyoroCheckboxWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroCheckboxWidgetShowcaseScreenState();
  MyoroCheckboxWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCheckboxConfiguration] of the [MyoroCheckbox].
  MyoroCheckboxConfiguration configuration(BuildContext context) {
    return MyoroCheckboxConfiguration(
      label: _state.label,
      labelTextStyle: _state.labelTextStyle,
      onChanged: (value) => _onChanged(context, value),
    );
  }

  /// [MyoroCheckboxConfiguration.onChanged]
  void _onChanged(BuildContext context, bool value) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Checkbox changed, value is now $value.',
        ),
      ),
    );
  }
}
