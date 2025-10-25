import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroInput] number variant.
class MyoroNumberInput extends StatelessWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroInputStyle();

  /// Default value for [min].
  static const minDefaultValue = 0.0;

  /// Default value for [decimalPlaces].
  static const decimalPlacesDefaultValue = 0;

  /// Default value for [decimalSeparator].
  static const decimalSeparatorDefaultValue = '.';

  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default value for [text].
  static const textDefaultValue = kMyoroEmptyString;

  /// Default value for [readOnly].
  static const readOnlyDefaultValue = MyoroInput.readOnlyDefaultValue;

  /// Default value for [placeholder].
  static const placeholderDefaultValue = kMyoroEmptyString;

  /// Default value for [enabled].
  static const enabledDefaultValue = true;

  const MyoroNumberInput({
    super.key,
    this.style = styleDefaultValue,
    this.min = minDefaultValue,
    this.max,
    this.decimalPlaces = decimalPlacesDefaultValue,
    this.decimalSeparator = decimalSeparatorDefaultValue,
    this.label = labelDefaultValue,
    this.text = textDefaultValue,
    this.placeholder = placeholderDefaultValue,
    this.enabled = enabledDefaultValue,
    this.inputKey,
    this.readOnly = readOnlyDefaultValue,
    this.prefix,
    this.onTap,
    this.inputController,
    this.onFieldSubmitted,
    this.suffix,
    this.checkboxOnChanged,
    this.onChanged,
  });

  /// [MyoroInput.style]
  final MyoroInputStyle style;

  /// [MyoroNumberInput.min]
  final double min;

  /// [MyoroNumberInput.max]
  final double? max;

  /// [MyoroNumberInput.decimalPlaces]
  final int decimalPlaces;

  /// [MyoroNumberInput.decimalSeparator]
  final String decimalSeparator;

  /// [MyoroInput.label]
  final String label;

  /// [MyoroInput.text]
  final String text;

  /// [MyoroInput.placeholder]
  final String placeholder;

  /// [MyoroInput.enabled]
  final bool enabled;

  /// [MyoroInput.inputKey]
  final Key? inputKey;

  /// [MyoroInput.readOnly]
  final bool readOnly;

  /// [MyoroInput.prefix]
  final Widget? prefix;

  /// [MyoroInput.onTap]
  final VoidCallback? onTap;

  /// [MyoroInput.inputController]
  final TextEditingController? inputController;

  /// [MyoroInput.onFieldSubmitted]
  final MyoroInputOnFieldSubmitted? onFieldSubmitted;

  /// [MyoroInput.suffix]
  final Widget? suffix;

  /// [MyoroInput.checkboxOnChanged]
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroInput.onChanged]
  final MyoroInputOnChanged? onChanged;

  @override
  Widget build(_) {
    return MyoroInput(
      key: key,
      style: style,
      formatter: MyoroNumberInputFormatter(
        min: min,
        max: max,
        decimalPlaces: decimalPlaces,
        decimalSeparator: decimalSeparator,
      ),
      label: label,
      text: text,
      placeholder: placeholder,
      onChanged: onChanged,
      enabled: enabled,
      inputKey: inputKey,
      readOnly: readOnly,
      prefix: prefix,
      onTap: onTap,
      inputController: inputController,
      onFieldSubmitted: onFieldSubmitted,
      suffix: suffix,
      checkboxOnChanged: checkboxOnChanged,
    );
  }
}
