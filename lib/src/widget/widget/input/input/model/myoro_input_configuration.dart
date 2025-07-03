import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_configuration.g.dart';

/// Model to load all of the configurable arguments of [MyoroInput].
@myoroModel
class MyoroInputConfiguration with _$MyoroInputConfigurationMixin {
  static const inputStyleDefaultValue = MyoroInputStyleEnum.outlined;
  static const labelDefaultValue = '';
  static const placeholderDefaultValue = '';
  static const textAlignDefaultValue = TextAlign.start;
  static const enabledDefaultValue = true;
  static const readOnlyDefaultValue = false;
  static const autofocusDefaultValue = false;
  static const showClearTextButtonDefaultValue = true;

  const MyoroInputConfiguration({
    this.inputStyle = inputStyleDefaultValue,
    this.textAlign = textAlignDefaultValue,
    this.inputTextStyle,
    this.label = '',
    this.labelTextStyle,
    this.placeholder = placeholderDefaultValue,
    this.contentPadding,
    this.border,
    this.suffix,
    this.enabled = enabledDefaultValue,
    this.readOnly = readOnlyDefaultValue,
    this.autofocus = autofocusDefaultValue,
    this.showClearTextButton = showClearTextButtonDefaultValue,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.focusNode,
    this.controller,
  });

  factory MyoroInputConfiguration.fake() {
    return MyoroInputConfiguration(
      inputStyle: MyoroInputStyleEnum.fake(),
      textAlign: myoroFake<TextAlign>(),
      inputTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : labelDefaultValue,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      placeholder: faker.randomGenerator.boolean() ? faker.lorem.word() : placeholderDefaultValue,
      contentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      border: myoroFake<InputBorder>(),
      suffix: faker.randomGenerator.boolean() ? Text(faker.lorem.word()) : null,
      enabled: faker.randomGenerator.boolean(),
      readOnly: faker.randomGenerator.boolean(),
      autofocus: faker.randomGenerator.boolean(),
      showClearTextButton: faker.randomGenerator.boolean(),
      checkboxOnChanged: faker.randomGenerator.boolean() ? ((_, _) {}) : null,
      validation: faker.randomGenerator.boolean() ? ((_) => faker.randomGenerator.boolean() ? null : '') : null,
      onFieldSubmitted: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onCleared: faker.randomGenerator.boolean() ? (() {}) : null,
      focusNode: faker.randomGenerator.boolean() ? FocusNode() : null,
      controller: faker.randomGenerator.boolean() ? TextEditingController() : null,
    );
  }

  /// Type of input.
  final MyoroInputStyleEnum inputStyle;

  /// [TextAlign] of the input.
  final TextAlign textAlign;

  /// Text style of the input.
  final TextStyle? inputTextStyle;

  /// Label displayed at the top of the input.
  final String label;

  /// Text style of the label.
  final TextStyle? labelTextStyle;

  /// Placeholder of the input (hint text).
  final String placeholder;

  /// [EdgeInsets] within the input.
  final EdgeInsets? contentPadding;

  /// [InputBorder] of the input.
  final InputBorder? border;

  /// Suffix [Widget] (i.e. a search button).
  final Widget? suffix;

  /// Whether the input is disabled (will be tilted for visual feedback).
  final bool enabled;

  /// Whether the input can be editted by the user.
  final bool readOnly;

  /// Whether the input should focus when it is inserted into the widget tree.
  final bool autofocus;

  /// Whether to show [_ClearTextButton] or not.
  final bool showClearTextButton;

  /// On changed when the checkbox next to the input is changed.
  ///
  /// The checkbox is enabled when this function is provided.
  ///
  /// When the checkbox is changed, the input will set it's [MyoroInputConfiguration.enabled] to false.
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// Function executed when [GlobalKey<FormState>().currentState!.validate()] is called.
  ///
  /// Aka, called when a [MyoroFormController.finish] is executed.
  final MyoroInputValidation? validation;

  /// Function executed when enter is pressed.
  final MyoroInputOnFieldSubmitted? onFieldSubmitted;

  /// Function executed when the input is changed.
  final MyoroInputOnChanged? onChanged;

  /// Function executed when [_ClearTextButton] is pressed.
  final VoidCallback? onCleared;

  /// [FocusNode] of the input to programmatically focus on it.
  final FocusNode? focusNode;

  /// Controller of the input.
  final TextEditingController? controller;

  InputBorder getBorder(BuildContext context) {
    return border ?? inputStyle.getBorder(context);
  }
}
