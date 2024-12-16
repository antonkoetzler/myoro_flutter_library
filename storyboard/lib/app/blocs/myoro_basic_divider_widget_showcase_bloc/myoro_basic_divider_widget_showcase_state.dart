part of 'myoro_basic_divider_widget_showcase_bloc.dart';

final class MyoroBasicDividerWidgetShowcaseState extends Equatable {
  /// [MyoroBasicDivider.direction].
  final Axis direction;

  /// [MyoroBasicDivider.shortValue].
  final double shortValue;

  /// [MyoroBasicDivider.padding].
  final double verticalPadding;

  /// [MyoroBasicDivider.padding].
  final double horizontalPadding;

  const MyoroBasicDividerWidgetShowcaseState({
    this.direction = Axis.horizontal,
    required this.shortValue,
    this.verticalPadding = 10,
    this.horizontalPadding = 10,
  });

  MyoroBasicDividerWidgetShowcaseState copyWith({
    Axis? direction,
    double? shortValue,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return MyoroBasicDividerWidgetShowcaseState(
      direction: direction ?? this.direction,
      shortValue: shortValue ?? this.shortValue,
      verticalPadding: verticalPadding ?? this.verticalPadding,
      horizontalPadding: horizontalPadding ?? this.horizontalPadding,
    );
  }

  @override
  String toString() => ''
      'MyoroBasicDividerWidgetShowcaseState(\n'
      '  direction: $direction,\n'
      '  shortValue: $shortValue,\n'
      '  verticalPadding: $verticalPadding,\n'
      '  horizontalPadding: $horizontalPadding,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      direction,
      shortValue,
      verticalPadding,
      horizontalPadding,
    ];
  }
}
