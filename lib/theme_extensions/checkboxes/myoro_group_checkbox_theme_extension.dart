part of '../../widgets/checkboxes/myoro_group_checkbox.dart';

/// [ThemeExtension] for [MyoroCheckbox].
@immutable
class MyoroGroupCheckboxThemeExtension
    extends ThemeExtension<MyoroGroupCheckboxThemeExtension> {
  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  const MyoroGroupCheckboxThemeExtension({
    required this.spacing,
    required this.runSpacing,
  });

  const MyoroGroupCheckboxThemeExtension.builder()
    : spacing = 5,
      runSpacing = 5;

  MyoroGroupCheckboxThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(),
      runSpacing = faker.randomGenerator.decimal();

  @override
  MyoroGroupCheckboxThemeExtension copyWith({
    double? spacing,
    double? runSpacing,
  }) {
    return MyoroGroupCheckboxThemeExtension(
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
    );
  }

  @override
  MyoroGroupCheckboxThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupCheckboxThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroGroupCheckboxThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupCheckboxThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.runSpacing == runSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(spacing, runSpacing);
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      ');';
}
