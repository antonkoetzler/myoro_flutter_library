import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_date_picker_input_configuration.g.dart';

/// Configuration of [MyoroDatePickerInput].
@immutable
@myoroModel
final class MyoroDatePickerInputConfiguration extends MyoroInputConfiguration
    with _$MyoroDatePickerInputConfigurationMixin {
  const MyoroDatePickerInputConfiguration({
    super.inputStyle, <-- FUCK
    super.textAlign,
    super.inputTextStyle,
    super.label,
    super.labelTextStyle,
    super.contentPadding,
    super.border,
    super.suffix,
    super.enabled,
    super.showClearTextButton,
    super.checkboxOnChanged,
    super.validation,
    super.onFieldSubmitted,
    super.onChanged,
    super.onCleared,
    super.inputKey,
    super.checkboxKey,
    super.controller,
  }) : super(placeholder: MyoroInputConfiguration.placeholderDefaultValue, readOnly: true, autofocus: false);

  // coverage:ignore-start
  factory MyoroDatePickerInputConfiguration.fake() {
    return MyoroDatePickerInputConfiguration(
      inputStyle: MyoroInputStyleEnum.fake(),
      textAlign: myoroFake<TextAlign>(),
      inputTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : MyoroInputConfiguration.labelDefaultValue,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      contentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      border: myoroFake<InputBorder>(),
      suffix: faker.randomGenerator.boolean() ? Text(faker.lorem.word()) : null,
      enabled: faker.randomGenerator.boolean(),
      showClearTextButton: faker.randomGenerator.boolean(),
      checkboxOnChanged: faker.randomGenerator.boolean() ? ((_, _) {}) : null,
      validation: faker.randomGenerator.boolean() ? ((_) => faker.randomGenerator.boolean() ? null : '') : null,
      onFieldSubmitted: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onCleared: faker.randomGenerator.boolean() ? (() {}) : null,
      controller: faker.randomGenerator.boolean() ? TextEditingController() : null,
    );
  }
  // coverage:ignore-end

  @override
  MyoroDatePickerInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    String? placeholder,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    InputBorder? border,
    bool borderProvided = true,
    Widget? suffix,
    bool suffixProvided = true,
    bool? enabled,
    bool? readOnly,
    bool? autofocus,
    bool? showClearTextButton,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroInputValidation? validation,
    bool validationProvided = true,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    bool onFieldSubmittedProvided = true,
    MyoroInputOnChanged? onChanged,
    bool onChangedProvided = true,
    VoidCallback? onCleared,
    bool onClearedProvided = true,
    Key? inputKey,
    bool inputKeyProvided = true,
    Key? checkboxKey,
    bool checkboxKeyProvided = true,
    FocusNode? focusNode,
    bool focusNodeProvided = true,
    TextEditingController? controller,
    bool controllerProvided = true,
  }) {
    return MyoroDatePickerInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle: inputTextStyleProvided ? (inputTextStyle ?? this.inputTextStyle) : null,
      label: label ?? this.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? this.contentPadding) : null,
      border: borderProvided ? (border ?? this.border) : null,
      suffix: suffixProvided ? (suffix ?? this.suffix) : null,
      enabled: enabled ?? this.enabled,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      checkboxOnChanged: checkboxOnChanged ?? this.checkboxOnChanged,
      validation: validationProvided ? (validation ?? this.validation) : null,
      onFieldSubmitted: onFieldSubmittedProvided ? (onFieldSubmitted ?? this.onFieldSubmitted) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? this.onCleared) : null,
      inputKey: inputKeyProvided ? (inputKey ?? this.inputKey) : null,
      checkboxKey: checkboxKeyProvided ? (checkboxKey ?? this.checkboxKey) : null,
      controller: controllerProvided ? (controller ?? this.controller) : null,
    );
  }
}
