part of '../myoro_checkbox.dart';

/// Configuration of [MyoroCheckbox].
class MyoroCheckboxConfiguration extends Equatable {
  static const initialValueDefaultValue = false;

  /// Label at the right of the checkbox.
  final String? label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Initial value of the checkbox.
  final bool initialValue;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  const MyoroCheckboxConfiguration({
    this.label,
    this.labelTextStyle,
    this.initialValue = initialValueDefaultValue,
    this.onChanged,
  });

  factory MyoroCheckboxConfiguration.fake() {
    return MyoroCheckboxConfiguration(
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      labelTextStyle: faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      initialValue: faker.randomGenerator.boolean(),
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    );
  }

  MyoroCheckboxConfiguration copyWith({
    String? label,
    bool labelProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    bool? initialValue,
    MyoroCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroCheckboxConfiguration(
      label: labelProvided ? (label ?? this.label) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      initialValue: initialValue ?? this.initialValue,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [label, labelTextStyle, initialValue, onChanged];
  }

  @override
  String toString() =>
      'MyoroCheckboxConfiguration(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  initialValue: $initialValue,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
