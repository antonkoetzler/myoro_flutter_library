import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTableV2].
///
/// TODO: Needs to be tested.
final class MyoroTableV2ThemeExtension extends ThemeExtension<MyoroTableV2ThemeExtension> {
  /// [Container.decoration] of [_MyoroTableV2State].
  final BoxDecoration decoration;

  /// Default [TextStyle] of [Text](s) in [_Column].
  final TextStyle columnTextStyle;

  /// [EdgeInsets] of [_Loader].
  final EdgeInsets loaderPadding;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  /// [EdgeInsets] of [_ErrorMessage].
  final EdgeInsets errorMessagePadding;

  const MyoroTableV2ThemeExtension({
    required this.decoration,
    required this.columnTextStyle,
    required this.loaderPadding,
    required this.errorMessageTextStyle,
    required this.errorMessagePadding,
  });

  factory MyoroTableV2ThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;

    return MyoroTableV2ThemeExtension(
      decoration: BoxDecoration(
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        borderRadius:
            faker.randomGenerator.boolean()
                ? BorderRadius.circular(faker.randomGenerator.decimal(scale: 200))
                : null,
        border:
            faker.randomGenerator.boolean()
                ? Border.all(
                  width: faker.randomGenerator.decimal(scale: 50),
                  color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
                )
                : null,
      ),
      columnTextStyle: typography.randomTextStyle,
      loaderPadding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      errorMessageTextStyle: typography.randomTextStyle,
      errorMessagePadding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
    );
  }

  MyoroTableV2ThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : decoration = BoxDecoration(
        color: colorScheme.primary,
        border: Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      columnTextStyle = textTheme.titleSmall!,
      loaderPadding = const EdgeInsets.all(30),
      errorMessageTextStyle = textTheme.headlineMedium!,
      errorMessagePadding = const EdgeInsets.all(20);

  @override
  MyoroTableV2ThemeExtension copyWith({
    BoxDecoration? decoration,
    TextStyle? columnTextStyle,
    EdgeInsets? loaderPadding,
    TextStyle? errorMessageTextStyle,
    EdgeInsets? errorMessagePadding,
  }) {
    return MyoroTableV2ThemeExtension(
      decoration: decoration ?? this.decoration,
      columnTextStyle: columnTextStyle ?? this.columnTextStyle,
      loaderPadding: loaderPadding ?? this.loaderPadding,
      errorMessageTextStyle: errorMessageTextStyle ?? this.errorMessageTextStyle,
      errorMessagePadding: errorMessagePadding ?? this.errorMessagePadding,
    );
  }

  @override
  MyoroTableV2ThemeExtension lerp(
    covariant ThemeExtension<MyoroTableV2ThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableV2ThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      columnTextStyle: TextStyle.lerp(columnTextStyle, other.columnTextStyle, t),
      loaderPadding: EdgeInsets.lerp(loaderPadding, other.loaderPadding, t),
      errorMessageTextStyle: TextStyle.lerp(errorMessageTextStyle, other.errorMessageTextStyle, t),
      errorMessagePadding: EdgeInsets.lerp(errorMessagePadding, other.errorMessagePadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableV2ThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == decoration &&
        other.columnTextStyle == columnTextStyle &&
        other.loaderPadding == loaderPadding &&
        other.errorMessageTextStyle == errorMessageTextStyle &&
        other.errorMessagePadding == errorMessagePadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      decoration,
      columnTextStyle,
      loaderPadding,
      errorMessageTextStyle,
      errorMessagePadding,
    );
  }

  @override
  String toString() =>
      'MyoroTableV2ThemeExtension(\n'
      '  decoration: $decoration,\n'
      '  columnTextStyle: $columnTextStyle,\n'
      '  loaderPadding: $loaderPadding,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      '  errorMessagePadding: $errorMessagePadding,\n'
      ');';
}
