part of 'myoro_dropdown_widget_showcase_bloc.dart';

final class MyoroDropdownWidgetShowcaseState extends Equatable {
  /// [MyoroDropdown.label].
  final String? label;

  /// To manage whether or not [MyoroDropdown.label] is null or not.
  final bool labelEnabled;

  const MyoroDropdownWidgetShowcaseState({
    this.label,
    this.labelEnabled = false,
  });

  MyoroDropdownWidgetShowcaseState copyWith({
    String? label,
    bool? labelEnabled,
  }) {
    labelEnabled = labelEnabled ?? this.labelEnabled;

    return MyoroDropdownWidgetShowcaseState(
      label: labelEnabled ? (label ?? this.label) : null,
      labelEnabled: labelEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroDropdownWidgetShowcaseState(\n'
      '  label: $label,\n'
      '  labelEnabled: $labelEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      label,
      labelEnabled,
    ];
  }
}
