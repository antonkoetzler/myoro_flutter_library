part of 'myoro_checkbox_widget_showcase_bloc.dart';

final class MyoroCheckboxWidgetShowcaseState extends Equatable {
  /// Text of the label.
  final String label;

  const MyoroCheckboxWidgetShowcaseState({
    this.label = '',
  });

  MyoroCheckboxWidgetShowcaseState copyWith({
    String? label,
  }) {
    return MyoroCheckboxWidgetShowcaseState(
      label: label ?? this.label,
    );
  }

  @override
  String toString() => ''
      'MyoroCheckboxWidgetShowcaseState(\n'
      '  label: $label,\n'
      ');';

  @override
  List<Object?> get props => [label];
}
