part of 'myoro_checkbox_widget_showcase_bloc.dart';

final class MyoroCheckboxWidgetShowcaseState extends Equatable {
  /// [MyoroCheckbox.label].
  final String label;

  /// [MyoroCheckbox.labelTextStyle].
  final TextStyle labelTextStyle;

  const MyoroCheckboxWidgetShowcaseState({
    this.label = '',
    required this.labelTextStyle,
  });

  MyoroCheckboxWidgetShowcaseState copyWith({
    String? label,
    TextStyle? labelTextStyle,
  }) {
    return MyoroCheckboxWidgetShowcaseState(
      label: label ?? this.label,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
    );
  }

  @override
  String toString() => ''
      'MyoroCheckboxWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      ');';

  @override
  List<Object?> get props => [label, labelTextStyle];
}
