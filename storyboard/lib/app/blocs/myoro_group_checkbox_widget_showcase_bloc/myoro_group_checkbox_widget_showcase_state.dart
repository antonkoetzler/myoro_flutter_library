part of 'myoro_group_checkbox_widget_showcase_bloc.dart';

final class MyoroGroupCheckboxWidgetShowcaseState extends Equatable {
  /// [MyoroGroupCheckbox.direction].
  final Axis? direction;

  /// [MyoroGroupCheckbox.spacing].
  final double? spacing;

  /// [MyoroGroupCheckbox.runSpacing].
  final double? runSpacing;

  /// [MyoroGroupCheckbox.checkboxes].
  final MyoroGroupCheckboxItems checkboxes;

  const MyoroGroupCheckboxWidgetShowcaseState({
    this.direction,
    this.spacing,
    this.runSpacing,
    required this.checkboxes,
  });

  MyoroGroupCheckboxWidgetShowcaseState copyWith({
    Axis? direction,
    double? spacing,
    double? runSpacing,
    MyoroGroupCheckboxItems? checkboxes,
  }) {
    return MyoroGroupCheckboxWidgetShowcaseState(
      direction: direction ?? this.direction,
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
      checkboxes: checkboxes ?? this.checkboxes,
    );
  }

  @override
  String toString() => ''
      'MyoroGroupCheckboxWidgetShowcaseState(\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      '  checkboxes: $checkboxes,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      direction,
      spacing,
      runSpacing,
      checkboxes,
    ];
  }
}
