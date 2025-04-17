part of 'myoro_radio_widget_showcase_bloc.dart';

final class MyoroRadioWidgetShowcaseState extends Equatable {
  /// [MyoroRadio.label].
  final String? label;

  /// [MyoroRadio.labelTextStyle].
  final TextStyle? labelTextStyle;

  const MyoroRadioWidgetShowcaseState({this.label, this.labelTextStyle});

  MyoroRadioWidgetShowcaseState copyWith({String? label, bool labelProvided = true, TextStyle? labelTextStyle, bool labelTextStyleProvided = true}) {
    return MyoroRadioWidgetShowcaseState(
      label: labelProvided ? (label ?? this.label) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroRadioWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      ');';

  @override
  List<Object?> get props {
    return [label, labelTextStyle];
  }
}
