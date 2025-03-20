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
    this.label,
    this.placeholder,
    this.labelTextStyle,
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
    bool textAlignEnabled = true,
    TextStyle? inputTextStyle,
    bool inputTextStyleEnabled = true,
    String? label,
    bool labelEnabled = true,
    String? placeholder,
    bool placeholderEnabled = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleEnabled = true,
    bool? suffixEnabled,
    bool? enabled,
    bool? readOnly,
    bool? showClearTextButton,
    bool? checkboxOnChangedEnabled,
  }) {
    return MyoroInputWidgetShowcaseState(
      typeEnum: typeEnum ?? this.typeEnum,
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle: inputTextStyleEnabled
          ? (inputTextStyle ?? this.inputTextStyle)
          : null,
      label: labelEnabled ? (label ?? this.label) : null,
      placeholder:
          placeholderEnabled ? (placeholder ?? this.placeholder) : null,
      labelTextStyle: labelTextStyleEnabled
          ? (labelTextStyle ?? this.labelTextStyle)
          : null,
      suffixEnabled: suffixEnabled ?? this.suffixEnabled,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      checkboxOnChangedEnabled:
          checkboxOnChangedEnabled ?? this.checkboxOnChangedEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroInputWidgetShowcaseState(\n'
      '  typeEnum: $typeEnum,\n'
      '  inputStyle: $inputStyle,\n'
      '  textAlign: $textAlign,\n'
      '  inputTextStyle: $inputTextStyle,\n'
      '  label: $label,\n'
      '  placeholder: $placeholder,\n'
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
      label,
      placeholder,
      labelTextStyle,
      suffixEnabled,
      enabled,
      readOnly,
      showClearTextButton,
      checkboxOnChangedEnabled,
    ];
  }
}
