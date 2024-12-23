part of 'myoro_radio_widget_showcase_bloc.dart';

final class MyoroRadioWidgetShowcaseState extends Equatable {
  /// [MyoroRadio.label].
  final String? label;
  final bool labelEnabled;

  /// [MyoroRadio.labelTextStyle].
  final TextStyle? labelTextStyle;
  final bool labelTextStyleEnabled;

  const MyoroRadioWidgetShowcaseState({
    this.label,
    this.labelEnabled = false,
    this.labelTextStyle,
    this.labelTextStyleEnabled = false,
  });

  MyoroRadioWidgetShowcaseState copyWith({
    String? label,
    bool? labelEnabled,
    TextStyle? labelTextStyle,
    bool? labelTextStyleEnabled,
  }) {
    labelEnabled = labelEnabled ?? this.labelEnabled;
    labelTextStyleEnabled = labelTextStyleEnabled ?? this.labelTextStyleEnabled;

    return MyoroRadioWidgetShowcaseState(
      label: labelEnabled ? (label ?? this.label) : null,
      labelEnabled: labelEnabled,
      labelTextStyle: labelTextStyleEnabled ? (labelTextStyle ?? this.labelTextStyle) : null,
      labelTextStyleEnabled: labelTextStyleEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroRadioWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelEnabled: $labelEnabled,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  labelTextStyleEnabled: $labelTextStyleEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      label,
      labelEnabled,
      labelTextStyle,
      labelTextStyleEnabled,
    ];
  }
}
