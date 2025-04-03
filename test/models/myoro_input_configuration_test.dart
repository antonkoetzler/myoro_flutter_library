import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroInputConfiguration].
void main() {
  final model = MyoroInputConfiguration.fake();

  test('MyoroInputConfiguration.copyWith', () {
    final newModel = MyoroInputConfiguration.fake();
    expect(
      model.copyWith(
        inputStyle: newModel.inputStyle,
        textAlign: newModel.textAlign,
        inputTextStyle: newModel.inputTextStyle,
        label: newModel.label,
        placeholder: newModel.placeholder,
        labelTextStyle: newModel.labelTextStyle,
        border: newModel.border,
        suffix: newModel.suffix,
        enabled: newModel.enabled,
        readOnly: newModel.readOnly,
        showClearTextButton: newModel.showClearTextButton,
        checkboxOnChanged: newModel.checkboxOnChanged,
        validation: newModel.validation,
        onFieldSubmitted: newModel.onFieldSubmitted,
        onChanged: newModel.onChanged,
        onCleared: newModel.onCleared,
        focusNode: newModel.focusNode,
        controller: newModel.controller,
      ),
      newModel,
    );
  });

  test('MyoroInputConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroInputConfiguration(\n'
      '  inputStyle: ${model.inputStyle},\n'
      '  textAlign: ${model.textAlign},\n'
      '  inputTextStyle: ${model.inputTextStyle},\n'
      '  label: ${model.label},\n'
      '  placeholder: ${model.placeholder},\n'
      '  labelTextStyle: ${model.labelTextStyle},\n'
      '  border: ${model.border},\n'
      '  suffix: ${model.suffix},\n'
      '  enabled: ${model.enabled},\n'
      '  readOnly: ${model.readOnly},\n'
      '  showClearTextButton: ${model.showClearTextButton},\n'
      '  checkboxOnChanged: ${model.checkboxOnChanged},\n'
      '  validation: ${model.validation},\n'
      '  onFieldSubmitted: ${model.onFieldSubmitted},\n'
      '  onChanged: ${model.onChanged},\n'
      '  onCleared: ${model.onCleared},\n'
      '  focusNode: ${model.focusNode},\n'
      '  controller: ${model.controller},\n'
      ');',
    );
  });
}
