part of '../myoro_basic_divider.dart';

/// Configuration model to store the class members of [MyoroBasicDivider].
class MyoroBasicDividerConfiguration extends Equatable {
  /// Direction of the divider.
  final Axis direction;

  /// Short value of the divider (i.e. width for vertical, height for horizontal).
  final double? shortValue;

  /// Padding of the divider.
  final EdgeInsets? padding;

  const MyoroBasicDividerConfiguration({required this.direction, this.shortValue, this.padding});

  MyoroBasicDividerConfiguration copyWith({
    Axis? direction,
    double? shortValue,
    bool shortValueProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
  }) {
    return MyoroBasicDividerConfiguration(
      direction: direction ?? this.direction,
      shortValue: shortValueProvided ? (shortValue ?? this.shortValue) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
    );
  }

  MyoroBasicDividerConfiguration.fake()
    : direction = myoroFake<Axis>(),
      shortValue = faker.randomGenerator.decimal(),
      padding = null;

  @override
  String toString() =>
      'MyoroBasicDividerConfiguration(\n'
      '  direction: $direction,\n'
      '  shortValue: $shortValue,\n'
      '  padding: $padding,\n'
      ');';

  @override
  List<Object?> get props {
    return [direction, shortValue, padding];
  }
}
