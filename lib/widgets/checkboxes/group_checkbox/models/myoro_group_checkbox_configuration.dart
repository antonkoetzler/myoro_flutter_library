part of '../myoro_group_checkbox.dart';

/// Configuration of [MyoroGroupCheckbox].
class MyoroGroupCheckboxConfiguration extends Equatable {
  static const directionDefaultValue = Axis.vertical;

  /// Direction that the checkboxes will built in.
  final Axis direction;

  /// Spacing in between the checkboxes.
  final double? spacing;

  /// Spacing in between the checkboxes when the checkboxes are wrapping (cross axis spacing).
  final double? runSpacing;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  /// Checkboxes of the group.
  ///
  /// The [Map]'s key is the label of the checkbox, which is never null
  /// or empty. The [Map]'s value is the initial value of the checkbox.
  final MyoroGroupCheckboxItems checkboxes;

  const MyoroGroupCheckboxConfiguration({
    this.direction = directionDefaultValue,
    this.spacing,
    this.runSpacing,
    this.onChanged,
    required this.checkboxes,
  });

  factory MyoroGroupCheckboxConfiguration.fake() {
    final MyoroGroupCheckboxItems checkboxes = {
      for (int i = 0; i < faker.randomGenerator.integer(10); i++) ...{
        '$i) ${faker.lorem.word()}': faker.randomGenerator.boolean(),
      },
    };

    return MyoroGroupCheckboxConfiguration(
      direction: myoroFake<Axis>(),
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      runSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      onChanged: faker.randomGenerator.boolean() ? ((_, __) {}) : null,
      checkboxes: checkboxes,
    );
  }

  MyoroGroupCheckboxConfiguration copyWith({
    Axis? direction,
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
    MyoroGroupCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
    MyoroGroupCheckboxItems? checkboxes,
  }) {
    return MyoroGroupCheckboxConfiguration(
      direction: direction ?? this.direction,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      checkboxes: checkboxes ?? this.checkboxes,
    );
  }

  @override
  List<Object?> get props {
    return [direction, spacing, runSpacing, onChanged, checkboxes];
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxConfiguration(\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      '  onChanged: $onChanged,\n'
      '  checkboxes: $checkboxes,\n'
      ');';
}
