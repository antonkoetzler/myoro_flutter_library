import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroCheckboxWidgetShowcaseScreen].
final class MyoroCheckboxWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroCheckboxWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCheckbox.onChanged]
  void onChanged(BuildContext context, bool value) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Checkbox changed, value is now $value.',
        ),
      ),
    );
  }

  /// [_state] getter.
  MyoroCheckboxWidgetShowcaseScreenState get state {
    return _state;
  }

  /// [MyoroCheckboxThemeExtension] builder.
  MyoroCheckboxStyle get style {
    final labelTextStyle = _state.labelTextStyle;
    return MyoroCheckboxStyle(labelTextStyle: labelTextStyle);
  }
}
