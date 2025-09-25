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
    super.inputStyle,
    super.textAlign,
    super.label,
    super.text,
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
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : MyoroInputConfiguration.labelDefaultValue,
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
}
