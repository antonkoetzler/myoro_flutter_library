import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDatePickerInputConfiguration.copyWith', () {
    final firstConfiguration = MyoroDatePickerInputConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroDatePickerInputConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        inputStyle: secondConfiguration.inputStyle,
        textAlign: secondConfiguration.textAlign,
        label: secondConfiguration.label,
        text: secondConfiguration.text,
        placeholder: secondConfiguration.placeholder,
        suffix: secondConfiguration.suffix,
        suffixProvided: secondConfiguration.suffix != null,
        enabled: secondConfiguration.enabled,
        readOnly: secondConfiguration.readOnly,
        autofocus: secondConfiguration.autofocus,
        showClearTextButton: secondConfiguration.showClearTextButton,
        checkboxOnChanged: secondConfiguration.checkboxOnChanged,
        checkboxOnChangedProvided: secondConfiguration.checkboxOnChanged != null,
        validation: secondConfiguration.validation,
        validationProvided: secondConfiguration.validation != null,
        onFieldSubmitted: secondConfiguration.onFieldSubmitted,
        onFieldSubmittedProvided: secondConfiguration.onFieldSubmitted != null,
        onChanged: secondConfiguration.onChanged,
        onChangedProvided: secondConfiguration.onChanged != null,
        onCleared: secondConfiguration.onCleared,
        onClearedProvided: secondConfiguration.onCleared != null,
        inputKey: secondConfiguration.inputKey,
        inputKeyProvided: secondConfiguration.inputKey != null,
        checkboxKey: secondConfiguration.checkboxKey,
        checkboxKeyProvided: secondConfiguration.checkboxKey != null,
        focusNode: secondConfiguration.focusNode,
        focusNodeProvided: secondConfiguration.focusNode != null,
        controller: secondConfiguration.controller,
        controllerProvided: secondConfiguration.controller != null,
      ),
      secondConfiguration,
    );
  });
}
