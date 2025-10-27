import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroGroupCheckboxWidgetShowcaseScreen].
final class MyoroGroupCheckboxWidgetShowcaseScreenViewModel {
  MyoroGroupCheckboxWidgetShowcaseScreenViewModel(BuildContext context)
    : _state = MyoroGroupCheckboxWidgetShowcaseScreenState(
        context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>().spacing ?? 0,
        context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>().runSpacing ?? 0,
      );

  /// State.
  final MyoroGroupCheckboxWidgetShowcaseScreenState _state;

  /// [_state] getter.
  MyoroGroupCheckboxWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroGroupCheckbox.onChanged]
  void onChanged(BuildContext context, String key, MyoroGroupCheckboxItems checkboxes) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        snackBarType: MyoroSnackBarTypeEnum.attention,
        message: '$key changed. It\'s value is now ${checkboxes[key]}.',
      ),
    );
  }

  /// [MyoroGroupCheckboxThemeExtension] builder.
  MyoroGroupCheckboxStyle get style {
    final spacing = _state.spacing;
    final runSpacing = _state.runSpacing;
    return MyoroGroupCheckboxStyle(spacing: spacing, runSpacing: runSpacing);
  }
}
