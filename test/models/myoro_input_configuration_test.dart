import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroInputConfiguration.fake();

  test('MyoroInputConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final newModel = MyoroInputConfiguration.fake();
    expect(
      model.copyWith(
        inputStyle: newModel.inputStyle,
        textAlign: newModel.textAlign,
        textAlignEnabled: newModel.textAlign != null,
        inputTextStyle: newModel.inputTextStyle,
        inputTextStyleEnabled: newModel.inputTextStyle != null,
        label: newModel.label,
        labelEnabled: newModel.label != null,
        placeholder: newModel.placeholder,
        placeholderEnabled: newModel.placeholder != null,
        labelTextStyle: newModel.labelTextStyle,
        labelTextStyleEnabled: newModel.labelTextStyle != null,
        border: newModel.border,
        borderEnabled: newModel.border != null,
        suffix: newModel.suffix,
        suffixEnabled: newModel.suffix != null,
        enabled: newModel.enabled,
        enabledEnabled: newModel.enabled != null,
        readOnly: newModel.readOnly,
        readOnlyEnabled: newModel.readOnly != null,
        autofocus: newModel.autofocus,
        autofocusEnabled: newModel.autofocus != null,
        showClearTextButton: newModel.showClearTextButton,
        showClearTextButtonEnabled: newModel.showClearTextButton != null,
        checkboxOnChanged: newModel.checkboxOnChanged,
        checkboxOnChangedEnabled: newModel.checkboxOnChanged != null,
        validation: newModel.validation,
        validationEnabled: newModel.validation != null,
        onFieldSubmitted: newModel.onFieldSubmitted,
        onFieldSubmittedEnabled: newModel.onFieldSubmitted != null,
        onChanged: newModel.onChanged,
        onChangedEnabled: newModel.onChanged != null,
        onCleared: newModel.onCleared,
        onClearedEnabled: newModel.onCleared != null,
        focusNode: newModel.focusNode,
        focusNodeEnabled: newModel.focusNode != null,
        controller: newModel.controller,
        controllerEnabled: newModel.controller != null,
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
    late final BuildContext context;
    late final MyoroInputThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext buildContext) {
            context = buildContext;
            themeExtension =
                context.resolveThemeExtension<MyoroInputThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );

    const border = OutlineInputBorder();
    const modelWithCustomBorder = MyoroInputConfiguration(border: border);
    expect(modelWithCustomBorder.getBorder(context), border);

    const modelWithoutCustomBorder = MyoroInputConfiguration();
    expect(
      modelWithoutCustomBorder.getBorder(context),
      switch (modelWithoutCustomBorder.inputStyle) {
        MyoroInputStyleEnum.underlined => themeExtension.underlinedBorder,
        MyoroInputStyleEnum.outlined => themeExtension.outlinedBorder,
      },
    );
  });
}
