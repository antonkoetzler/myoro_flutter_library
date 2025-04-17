import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroInputConfiguration.fake();

  test('MyoroInputConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroInputConfiguration.fake();
    expect(
      model.copyWith(
        inputStyle: otherModel.inputStyle,
        textAlign: otherModel.textAlign,
        inputTextStyle: otherModel.inputTextStyle,
        label: otherModel.label,
        placeholder: otherModel.placeholder,
        labelTextStyle: otherModel.labelTextStyle,
        contentPadding: otherModel.contentPadding,
        border: otherModel.border,
        suffix: otherModel.suffix,
        enabled: otherModel.enabled,
        readOnly: otherModel.readOnly,
        autofocus: otherModel.autofocus,
        showClearTextButton: otherModel.showClearTextButton,
        checkboxOnChanged: otherModel.checkboxOnChanged,
        validation: otherModel.validation,
        onFieldSubmitted: otherModel.onFieldSubmitted,
        onChanged: otherModel.onChanged,
        onCleared: otherModel.onCleared,
        focusNode: otherModel.focusNode,
        controller: otherModel.controller,
      ),
      otherModel,
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
      '  contentPadding: ${model.contentPadding},\n'
      '  border: ${model.border},\n'
      '  suffix: ${model.suffix},\n'
      '  enabled: ${model.enabled},\n'
      '  readOnly: ${model.readOnly},\n'
      '  autofocus: ${model.autofocus},\n'
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

  testWidgets('MyoroInputConfiguration.getBorder', (WidgetTester tester) async {
    const modelWithBorder = MyoroInputConfiguration(border: OutlineInputBorder());
    const modelWithoutBorder = MyoroInputConfiguration();

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            expect(modelWithBorder.getBorder(context), modelWithBorder.border);
            expect(modelWithoutBorder.getBorder(context), modelWithoutBorder.inputStyle.getBorder(context));
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  });
}
