import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroInputWidgetShowcaseScreenViewModel].
class MyoroInputWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroInputWidgetShowcaseScreenState();
  MyoroInputWidgetShowcaseScreenState get state => _state;

  /// Builds the [MyoroInputConfiguration] of [_Widget].
  MyoroInputConfiguration buildConfiguration(BuildContext context, Widget suffix) {
    return MyoroInputConfiguration(
      inputStyle: _state.inputStyle,
      textAlign: _state.textAlign,
      label: _state.label,
      placeholder: _state.placeholder,
      suffix: _state.suffixEnabled ? suffix : null,
      enabled: _state.enabled,
      readOnly: _state.readOnly,
      autofocus: true,
      showClearTextButton: _state.showClearTextButton,
      checkboxOnChanged:
          _state.checkboxOnChangedEnabled ? (enabled, text) => _checkboxOnChanged(context, enabled, text) : null,
      validation: _state.validationEnabled ? _validation : null,
      onFieldSubmitted: (text) => _onFieldSubmitted(context, text),
      onChanged: _state.onChangedEnabled ? (text) => _onChanged(context, text) : null,
      onCleared: _state.onClearedEnabled ? () => _onCleared(context) : null,
    );
  }

  /// [MyoroInputConfiguration.checkboxOnChanged]
  void _checkboxOnChanged(BuildContext context, bool enabled, String text) {
    _showSnackBar(context, 'Input ${enabled ? 'enabled' : 'disabled'}, text is $text.');
  }

  /// [MyoroInputConfiguration.validation]
  String? _validation(String text) {
    return text == '123' ? 'Validation message!' : null;
  }

  /// [MyoroInputConfiguration.onFieldSubmitted]
  void _onFieldSubmitted(BuildContext context, String? text) {
    if (_state.validationEnabled) {
      _state.formNotifier.fetch();
    }
    if (_state.onFieldSubmittedEnabled) {
      _showSnackBar(context, 'Enter key pressed! Text is $text.');
    }
  }

  /// [MyoroInputConfiguration.onChanged]
  void _onChanged(BuildContext context, String text) {
    _showSnackBar(context, 'Text changed: $text.');
  }

  /// [MyoroInputConfiguration.onCleared]
  void _onCleared(BuildContext context) {
    _showSnackBar(context, 'Clear text button was pressed!');
  }

  /// Builds the [MyoroInputThemeExtension] of [_Widget].
  MyoroInputThemeExtension buildThemeExtension(BuildContext context) {
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
      clearTextButtonPadding: _state.clearTextButtonPadding,
      clearTextButtonIcon: _state.clearTextButtonIcon,
    );
  }

  /// Generic function to display a snack bar.
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.attention, message: message),
      ),
    );
  }
}
