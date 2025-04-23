part of 'myoro_input_widget_showcase_bloc.dart';

final class MyoroInputWidgetShowcaseState extends Equatable {
  /// Named constructor of [MyoroInput] being used.
  final MyoroInputWidgetShowcaseEnum typeEnum;

  /// [MyoroInputConfiguration.inputStyle].
  final MyoroInputStyleEnum inputStyle;

  /// [MyoroInputConfiguration.textAlign].
  final TextAlign textAlign;

  /// [MyoroInputConfiguration.inputTextStyle].
  final TextStyle? inputTextStyle;

  /// [MyoroInputConfiguration.label].
  final String? label;

  /// [MyoroInputConfiguration.placeholder].
  final String? placeholder;

  /// [MyoroInputConfiguration.labelTextStyle].
  final TextStyle? labelTextStyle;

  /// If [MyoroInputConfiguration.suffix] will not be null.
  final bool suffixProvided;

  /// [MyoroInputConfiguration.enabled].
  final bool enabled;

  /// [MyoroInputConfiguration.readOnly].
  final bool readOnly;

  /// [MyoroInputConfiguration.showClearTextButton].
  final bool showClearTextButton;

  /// If [MyoroInputConfiguration.checkboxOnChanged] will not be null.
  final bool checkboxOnChangedProvided;

  const MyoroInputWidgetShowcaseState({
    this.typeEnum = MyoroInputWidgetShowcaseEnum.none,
    this.inputStyle = MyoroInputStyleEnum.outlined,
    this.textAlign = TextAlign.start,
    this.inputTextStyle,
    this.label,
    this.placeholder,
    this.labelTextStyle,
    this.suffixProvided = false,
    this.enabled = true,
    this.readOnly = false,
    this.showClearTextButton = true,
    this.checkboxOnChangedProvided = false,
  });

  MyoroInputWidgetShowcaseState copyWith({
    MyoroInputWidgetShowcaseEnum? typeEnum,
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    String? label,
    bool labelProvided = true,
    String? placeholder,
    bool placeholderProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    bool? suffixProvided,
    bool? enabled,
    bool? readOnly,
    bool? showClearTextButton,
    bool? checkboxOnChangedProvided,
  }) {
    return MyoroInputWidgetShowcaseState(
      typeEnum: typeEnum ?? this.typeEnum,
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle:
          inputTextStyleProvided
              ? (inputTextStyle ?? this.inputTextStyle)
              : null,
      label: labelProvided ? (label ?? this.label) : null,
      placeholder:
          placeholderProvided ? (placeholder ?? this.placeholder) : null,
      labelTextStyle:
          labelTextStyleProvided
              ? (labelTextStyle ?? this.labelTextStyle)
              : null,
      suffixProvided: suffixProvided ?? this.suffixProvided,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      checkboxOnChangedProvided:
          checkboxOnChangedProvided ?? this.checkboxOnChangedProvided,
    );
  }

  @override
  String toString() =>
      'MyoroInputWidgetShowcaseState(\n'
      '  typeEnum: $typeEnum,\n'
      '  inputStyle: $inputStyle,\n'
      '  textAlign: $textAlign,\n'
      '  inputTextStyle: $inputTextStyle,\n'
      '  label: $label,\n'
      '  placeholder: $placeholder,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  suffixProvided: $suffixProvided,\n'
      '  enabled: $enabled,\n'
      '  readOnly: $readOnly,\n'
      '  showClearTextButton: $showClearTextButton,\n'
      '  checkboxOnChangedProvided: $checkboxOnChangedProvided,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      typeEnum,
      inputStyle,
      textAlign,
      inputTextStyle,
      label,
      placeholder,
      labelTextStyle,
      suffixProvided,
      enabled,
      readOnly,
      showClearTextButton,
      checkboxOnChangedProvided,
    ];
  }
}
