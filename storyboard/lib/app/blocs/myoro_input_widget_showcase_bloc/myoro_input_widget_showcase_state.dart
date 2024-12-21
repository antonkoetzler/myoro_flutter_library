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
  final bool inputTextStyleEnabled;

  /// [MyoroInputConfiguration.label].
  final String? label;
  final bool labelEnabled;

  /// [MyoroInputConfiguration.placeholder].
  final String? placeholder;
  final bool placeholderEnabled;

  /// [MyoroInputConfiguration.labelTextStyle].
  final TextStyle? labelTextStyle;
  final bool labelTextStyleEnabled;

  /// If [MyoroInputConfiguration.suffix] will not be null.
  final bool suffixEnabled;

  /// [MyoroInputConfiguration.enabled].
  final bool enabled;

  /// [MyoroInputConfiguration.readOnly].
  final bool readOnly;

  /// [MyoroInputConfiguration.showClearTextButton].
  final bool showClearTextButton;

  /// If [MyoroInputConfiguration.checkboxOnChanged] will not be null.
  final bool checkboxOnChangedEnabled;

  const MyoroInputWidgetShowcaseState({
    this.typeEnum = MyoroInputWidgetShowcaseEnum.none,
    this.inputStyle = MyoroInputStyleEnum.outlined,
    this.textAlign = TextAlign.start,
    this.inputTextStyle,
    this.inputTextStyleEnabled = false,
    this.label,
    this.labelEnabled = false,
    this.placeholder,
    this.placeholderEnabled = false,
    this.labelTextStyle,
    this.labelTextStyleEnabled = false,
    this.suffixEnabled = false,
    this.enabled = true,
    this.readOnly = false,
    this.showClearTextButton = true,
    this.checkboxOnChangedEnabled = false,
  });

  MyoroInputWidgetShowcaseState copyWith({
    MyoroInputWidgetShowcaseEnum? typeEnum,
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool? inputTextStyleEnabled,
    String? label,
    bool? labelEnabled,
    String? placeholder,
    bool? placeholderEnabled,
    TextStyle? labelTextStyle,
    bool? labelTextStyleEnabled,
    bool? suffixEnabled,
    bool? enabled,
    bool? readOnly,
    bool? showClearTextButton,
    bool? checkboxOnChangedEnabled,
  }) {
    inputTextStyleEnabled = inputTextStyleEnabled ?? this.inputTextStyleEnabled;
    labelEnabled = labelEnabled ?? this.labelEnabled;
    placeholderEnabled = placeholderEnabled ?? this.placeholderEnabled;
    labelTextStyleEnabled = labelTextStyleEnabled ?? this.labelTextStyleEnabled;

    return MyoroInputWidgetShowcaseState(
      typeEnum: typeEnum ?? this.typeEnum,
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle: inputTextStyleEnabled ? (inputTextStyle ?? this.inputTextStyle) : null,
      inputTextStyleEnabled: inputTextStyleEnabled,
      label: labelEnabled ? (label ?? this.label) : null,
      labelEnabled: labelEnabled,
      placeholder: placeholderEnabled ? (placeholder ?? this.placeholder) : null,
      placeholderEnabled: placeholderEnabled,
      labelTextStyle: labelTextStyleEnabled ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelTextStyleEnabled: labelTextStyleEnabled,
      suffixEnabled: suffixEnabled ?? this.suffixEnabled,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      checkboxOnChangedEnabled: checkboxOnChangedEnabled ?? this.checkboxOnChangedEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroInputWidgetShowcaseState(\n'
      '  typeEnum: $typeEnum,\n'
      '  inputStyle: $inputStyle,\n'
      '  textAlign: $textAlign,\n'
      '  inputTextStyle: $inputTextStyle,\n'
      '  inputTextStyleEnabled: $inputTextStyleEnabled,\n'
      '  label: $label,\n'
      '  labelEnabled: $labelEnabled,\n'
      '  placeholder: $placeholder,\n'
      '  placeholderEnabled: $placeholderEnabled,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  suffixEnabled: $suffixEnabled,\n'
      '  enabled: $enabled,\n'
      '  readOnly: $readOnly,\n'
      '  showClearTextButton: $showClearTextButton,\n'
      '  checkboxOnChangedEnabled: $checkboxOnChangedEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      typeEnum,
      inputStyle,
      textAlign,
      inputTextStyle,
      inputTextStyleEnabled,
      label,
      labelEnabled,
      placeholder,
      placeholderEnabled,
      labelTextStyle,
      suffixEnabled,
      enabled,
      readOnly,
      showClearTextButton,
      checkboxOnChangedEnabled,
    ];
  }
}
