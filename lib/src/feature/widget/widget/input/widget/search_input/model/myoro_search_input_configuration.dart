import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_configuration.g.dart';

/// Configuration of [MyoroSearchInput].
@immutable
@myoroModel
class MyoroSearchInputConfiguration<T> extends MyoroInputConfiguration with _$MyoroSearchInputConfigurationMixin<T> {
  static const requestWhenChangedDefaultValue = false;

  const MyoroSearchInputConfiguration({
    super.inputStyle,
    super.textAlign,
    super.label,
    super.text,
    super.placeholder,
    super.suffix,
    super.enabled,
    super.readOnly,
    super.autofocus,
    super.showClearTextButton,
    super.checkboxOnChanged,
    super.validation,
    super.onFieldSubmitted,
    super.onChanged,
    super.onCleared,
    super.inputKey,
    super.checkboxKey,
    super.focusNode,
    super.controller,
    this.requestWhenChanged = requestWhenChangedDefaultValue,
    required this.request,
    required this.itemBuilder,
  });

  // coverage:ignore-start
  factory MyoroSearchInputConfiguration.fake() {
    final textProvided = faker.randomGenerator.boolean();

    return MyoroSearchInputConfiguration(
      inputStyle: MyoroInputStyleEnum.fake(),
      textAlign: myoroFake<TextAlign>(),
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : MyoroInputConfiguration.labelDefaultValue,
      text: textProvided && faker.randomGenerator.boolean()
          ? faker.lorem.word()
          : MyoroInputConfiguration.textDefaultValue,
      placeholder: faker.randomGenerator.boolean()
          ? faker.lorem.word()
          : MyoroInputConfiguration.placeholderDefaultValue,
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
      inputKey: faker.randomGenerator.boolean() ? GlobalKey() : null,
      checkboxKey: faker.randomGenerator.boolean() ? GlobalKey() : null,
      focusNode: faker.randomGenerator.boolean() ? FocusNode() : null,
      controller: !textProvided && faker.randomGenerator.boolean() ? TextEditingController() : null,
      requestWhenChanged: faker.randomGenerator.boolean(),
      request: ((_) => {}),
      itemBuilder: ((_) => MyoroMenuItem.fake()),
    );
  }
  // coverage:ignore-end

  /// If [request] will be ran everytime the input's text changes rather than when the input is submitted.
  final bool requestWhenChanged;

  /// Search request.
  final MyoroSearchInputRequest<T> request;

  /// [MyoroMenuItem] builder to display the items in [_SearchSection].
  final MyoroMenuItemBuilder<T> itemBuilder;

  @override
  MyoroSearchInputConfiguration<T> copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    String? label,
    String? text,
    String? placeholder,
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
    bool? requestWhenChanged,
    MyoroSearchInputRequest<T>? request,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroSearchInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      label: label ?? this.label,
      text: text ?? this.text,
      placeholder: placeholder ?? this.placeholder,
      suffix: suffixProvided ? (suffix ?? this.suffix) : null,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      autofocus: autofocus ?? this.autofocus,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      validation: validationProvided ? (validation ?? this.validation) : null,
      onFieldSubmitted: onFieldSubmittedProvided ? (onFieldSubmitted ?? this.onFieldSubmitted) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? this.onCleared) : null,
      inputKey: inputKeyProvided ? (inputKey ?? this.inputKey) : null,
      checkboxKey: checkboxKeyProvided ? (checkboxKey ?? this.checkboxKey) : null,
      focusNode: focusNodeProvided ? (focusNode ?? this.focusNode) : null,
      controller: controllerProvided ? (controller ?? this.controller) : null,
      requestWhenChanged: requestWhenChanged ?? this.requestWhenChanged,
      request: request ?? this.request,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }
}
