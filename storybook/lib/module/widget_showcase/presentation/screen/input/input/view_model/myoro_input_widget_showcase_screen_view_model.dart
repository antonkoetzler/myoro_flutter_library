import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_widget_showcase_screen_state.dart';

/// View model of [MyoroInputWidgetShowcaseScreenViewModel].
class MyoroInputWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroInputWidgetShowcaseScreenState();

  /// [MyoroInputConfiguration.checkboxOnChanged]
  void checkboxOnChanged(BuildContext context, bool enabled, String text) {
    _showSnackBar(context, 'Input ${enabled ? 'enabled' : 'disabled'}, text is $text.');
  }

  /// [MyoroInputConfiguration.validation]
  String? validation(String text) {
    return text == '123' ? 'Validation message!' : null;
  }

  /// [MyoroInputConfiguration.onFieldSubmitted]
  void onFieldSubmitted(BuildContext context, String? text) {
    if (_state.validationEnabled) {
      _state.formController.fetch();
    }
    if (_state.onFieldSubmittedEnabled) {
      _showSnackBar(context, 'Enter key pressed! Text is $text.');
    }
  }

  /// [MyoroInputConfiguration.onChanged]
  void onChanged(BuildContext context, String text) {
    _showSnackBar(context, 'Text changed: $text.');
  }

  /// [MyoroInputConfiguration.onCleared]
  void onCleared(BuildContext context) {
    _showSnackBar(context, 'Clear text button was pressed!');
  }

  /// Builds the [MyoroInputThemeExtension] of [_Widget].
  MyoroInputThemeExtension buildStyle(BuildContext context) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return inputThemeExtension.copyWith(
      border: _state.customBorder,
      underlinedBorder: _state.underlinedBorder,
      outlinedBorder: _state.outlinedBorder,
      noneBorder: _state.noneBorder,
      primaryColor: _state.primaryColor,
      errorBorderColor: _state.errorBorderColor,
      cursorHeight: _state.cursorHeight,
      contentPadding: _state.contentPadding,
      disabledOpacity: _state.disabledOpacity,
      inputTextStyle: _state.inputTextStyle,
      spacing: _state.spacing,
      labelTextStyle: _state.labelTextStyle,
      labelBehavior: _state.labelBehavior,
      suffixButtonMargin: _state.suffixButtonMargin,
      suffixButtonIconSize: _state.suffixButtonIconSize,
      clearTextButtonIcon: _state.clearTextButtonIcon,
      obscureTextButtonEnabledIcon: _state.obscureTextButtonEnabledIcon,
      obscureTextButtonDisabledIcon: _state.obscureTextButtonDisabledIcon,
      suffixIconConstraints: _state.suffixIconConstraints,
    );
  }

  /// Generic function to display a snack bar.
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(snackBar: MyoroSnackBar(snackBarType: MyoroSnackBarTypeEnum.attention, message: message));
  }

  /// [_state] getter.
  MyoroInputWidgetShowcaseScreenState get state => _state;
}
