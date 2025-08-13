import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroGroupCheckboxWidgetShowcaseScreen].
final class MyoroGroupCheckboxWidgetShowcaseScreenViewModel {
  MyoroGroupCheckboxWidgetShowcaseScreenViewModel(BuildContext context)
    : _state = MyoroGroupCheckboxWidgetShowcaseScreenState(
        context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>().spacing,
        context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>().runSpacing,
      );

  /// State.
  final MyoroGroupCheckboxWidgetShowcaseScreenState _state;

  /// [_state] getter.
  MyoroGroupCheckboxWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroGroupCheckboxConfiguration] of the [MyoroGroupCheckbox].
  MyoroGroupCheckboxConfiguration configuration(BuildContext context) {
    void onChanged(BuildContext context, String key, MyoroGroupCheckboxItems checkboxes) {
      context.showSnackBar(
        snackBar: MyoroSnackBar(
          configuration: MyoroSnackBarConfiguration(
            snackBarType: MyoroSnackBarTypeEnum.attention,
            message: '$key changed. It\'s value is now ${checkboxes[key]}.',
          ),
        ),
      );
    }

    return MyoroGroupCheckboxConfiguration(
      direction: _state.direction,
      spacing: _state.spacing,
      runSpacing: _state.runSpacing,
      onChanged: (key, checkboxes) => onChanged(context, key, checkboxes),
    );
  }
}
