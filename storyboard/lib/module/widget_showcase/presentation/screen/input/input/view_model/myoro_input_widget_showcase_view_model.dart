import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroInputWidgetShowcaseViewModel].
final class MyoroInputWidgetShowcaseViewModel {
  /// State
  final state = MyoroInputWidgetShowcaseState();

  /// Constructors the [MyoroInputConfiguration] of [_Widget].
  MyoroInputConfiguration configuration(BuildContext context, Widget suffix) {
    return MyoroInputConfiguration(
      inputStyle: state.inputStyle,
      textAlign: state.textAlign,
      inputTextStyle: state.inputTextStyle,
      label: state.label,
      labelTextStyle: state.labelTextStyle,
      placeholder: state.placeholder,
      contentPadding: state.contentPadding,
      border: state.borderEnabled ? _border : null,
      suffix: state.suffixEnabled ? suffix : null,
      enabled: state.enabled,
      readOnly: state.readOnly,
      autofocus: true,
      showClearTextButton: state.showClearTextButton,
      checkboxOnChanged:
          state.checkboxOnChangedEnabled ? (enabled, text) => _checkboxOnChanged(context, enabled, text) : null,
      validation: state.validationEnabled ? _validation : null,
      onFieldSubmitted: (text) => _onFieldSubmitted(context, text),
      onChanged: state.onChangedEnabled ? (text) => _onChanged(context, text) : null,
      onCleared: state.onClearedEnabled ? () => _onCleared(context) : null,
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
    if (state.validationEnabled) {
      state.formController.fetch();
    }
    if (state.onFieldSubmittedEnabled) {
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
