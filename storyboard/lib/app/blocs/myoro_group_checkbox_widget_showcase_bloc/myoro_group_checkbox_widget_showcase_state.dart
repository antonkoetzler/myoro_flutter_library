part of 'myoro_group_checkbox_widget_showcase_bloc.dart';

final class MyoroGroupCheckboxWidgetShowcaseState extends Equatable {
  /// [MyoroGroupCheckbox.direction].
  final Axis direction;

  /// [MyoroGroupCheckbox.spacing].
  final double spacing;

  /// [MyoroGroupCheckbox.runSpacing].
  final double runSpacing;

  const MyoroGroupCheckboxWidgetShowcaseState({this.direction = Axis.horizontal, this.spacing = 5, this.runSpacing = 5});

  MyoroGroupCheckboxWidgetShowcaseState copyWith({Axis? direction, double? spacing, double? runSpacing}) {
    return MyoroGroupCheckboxWidgetShowcaseState(
      direction: direction ?? this.direction,
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
    );
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxWidgetShowcaseState(\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      ');';

  @override
  List<Object?> get props {
    return [direction, spacing, runSpacing];
  }
}
