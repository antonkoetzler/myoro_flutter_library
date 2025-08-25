import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroInputWidgetShowcaseScreenViewModel].
class MyoroInputWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroInputWidgetShowcaseScreenState();
  MyoroInputWidgetShowcaseScreenState get state => _state;

  /// Constructors the [MyoroInputConfiguration] of [_Widget].
  MyoroInputConfiguration configuration(BuildContext context, Widget suffix) {
    return MyoroInputConfiguration(
      inputStyle: _state.inputStyle,
      textAlign: _state.textAlign,
      inputTextStyle: _state.inputTextStyle,
      label: _state.label,
      labelTextStyle: _state.labelTextStyle,
      placeholder: _state.placeholder,
      contentPadding: _state.contentPadding,
      border: _state.borderEnabled ? _border : null,
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

  /// Custom [InputBorder].
  InputBorder get _border {
    return OutlineInputBorder(
      borderSide: BorderSide(width: faker.randomGenerator.decimal(scale: 5, min: 0.5), color: myoroFake<Color>()),
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

  /// Generic function to display a snack bar.
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.attention, message: message),
      ),
    );
  }
}
