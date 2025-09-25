import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCheckboxWidgetShowcaseScreen].
final class MyoroCheckboxWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroCheckboxWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroCheckboxWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCheckboxConfiguration] builder.
  MyoroCheckboxConfiguration buildConfiguration(BuildContext context) {
    return MyoroCheckboxConfiguration(label: _state.label, onChanged: (value) => _onChanged(context, value));
  }

  /// [MyoroCheckboxThemeExtension] builder.
  MyoroCheckboxThemeExtension buildStyle(BuildContext context) {
    final checkboxThemeExtension = MyoroCheckboxThemeExtension.builder(context.colorScheme, context.textTheme);

    final labelTextStyle = _state.labelTextStyle;

    return checkboxThemeExtension.copyWith(
      labelTextStyle: labelTextStyle,
      labelTextStyleProvided: labelTextStyle != null,
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
