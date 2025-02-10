part of 'myoro_group_radio_widget_showcase_bloc.dart';

final class MyoroGroupRadioWidgetShowcaseState extends Equatable {
  /// [MyoroGroupRadio.direction].
  final Axis direction;

  /// [MyoroGroupRadio.spacing].
  final double spacing;

  /// [MyoroGroupRadio.runSpacing].
  final double runSpacing;

  const MyoroGroupRadioWidgetShowcaseState({
    required this.direction,
    required this.spacing,
    required this.runSpacing,
  });

  MyoroGroupRadioWidgetShowcaseState copyWith({
    Axis? direction,
    double? spacing,
    double? runSpacing,
  }) {
    return MyoroGroupRadioWidgetShowcaseState(
      direction: direction ?? this.direction,
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
    );
  }

  @override
  String toString() => ''
      'MyoroGroupRadioWidgetShowcaseState(\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      direction,
      spacing,
      runSpacing,
    ];
  }
}
