part of '../../widgets/tables/myoro_table.dart';

/// [ThemeExtension] of [MyoroTable].
class MyoroTableThemeExtension
    extends ThemeExtension<MyoroTableThemeExtension> {
  /// [Container.decoration] of [_MyoroTableState].
  final BoxDecoration decoration;

  /// Default [TextStyle] of [_Column].
  final TextStyle columnTextStyle;

  /// Spacing between columns.
  final double columnSpacing;

  /// Default [TextStyle] of [_Row].
  final TextStyle rowTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  final EdgeInsets loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  const MyoroTableThemeExtension({
    required this.decoration,
    required this.columnTextStyle,
    required this.columnSpacing,
    required this.rowTextStyle,
    required this.loaderEmptyMessageErrorMessagePadding,
    required this.emptyMessageTextStyle,
    required this.errorMessageTextStyle,
  });

  factory MyoroTableThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;

    return MyoroTableThemeExtension(
      decoration: myoroFake<BoxDecoration>(),
      columnTextStyle: typography.randomTextStyle,
      columnSpacing: faker.randomGenerator.decimal(scale: 20),
      rowTextStyle: typography.randomTextStyle,
      loaderEmptyMessageErrorMessagePadding: myoroFake<EdgeInsets>(),
      emptyMessageTextStyle: typography.randomTextStyle,
      errorMessageTextStyle: typography.randomTextStyle,
    );
  }

  MyoroTableThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : decoration = BoxDecoration(
        color: colorScheme.primary,
        border: Border.all(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      columnTextStyle = textTheme.titleMedium!,
      columnSpacing = 10,
      rowTextStyle = textTheme.bodyMedium!,
      loaderEmptyMessageErrorMessagePadding = const EdgeInsets.all(10),
      emptyMessageTextStyle = textTheme.headlineMedium!,
      errorMessageTextStyle = textTheme.headlineMedium!.withColor(
        colorScheme.error,
      );

  @override
  MyoroTableThemeExtension copyWith({
    BoxDecoration? decoration,
    TextStyle? columnTextStyle,
    double? columnSpacing,
    TextStyle? rowTextStyle,
    EdgeInsets? loaderEmptyMessageErrorMessagePadding,
    TextStyle? emptyMessageTextStyle,
    TextStyle? errorMessageTextStyle,
  }) {
    return MyoroTableThemeExtension(
      decoration: decoration ?? this.decoration,
      columnTextStyle: columnTextStyle ?? this.columnTextStyle,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      rowTextStyle: rowTextStyle ?? this.rowTextStyle,
      loaderEmptyMessageErrorMessagePadding:
          loaderEmptyMessageErrorMessagePadding ??
          this.loaderEmptyMessageErrorMessagePadding,
      emptyMessageTextStyle:
          emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      errorMessageTextStyle:
          errorMessageTextStyle ?? this.errorMessageTextStyle,
    );
  }

  @override
  MyoroTableThemeExtension lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      columnTextStyle: TextStyle.lerp(
        columnTextStyle,
        other.columnTextStyle,
        t,
      ),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      rowTextStyle: TextStyle.lerp(rowTextStyle, other.rowTextStyle, t),
      loaderEmptyMessageErrorMessagePadding: EdgeInsets.lerp(
        loaderEmptyMessageErrorMessagePadding,
        other.loaderEmptyMessageErrorMessagePadding,
        t,
      ),
      emptyMessageTextStyle: TextStyle.lerp(
        emptyMessageTextStyle,
        other.emptyMessageTextStyle,
        t,
      ),
      errorMessageTextStyle: TextStyle.lerp(
        errorMessageTextStyle,
        other.errorMessageTextStyle,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == decoration &&
        other.columnTextStyle == columnTextStyle &&
        other.columnSpacing == columnSpacing &&
        other.rowTextStyle == rowTextStyle &&
        other.loaderEmptyMessageErrorMessagePadding ==
            loaderEmptyMessageErrorMessagePadding &&
        other.emptyMessageTextStyle == emptyMessageTextStyle &&
        other.errorMessageTextStyle == errorMessageTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      decoration,
      columnTextStyle,
      columnSpacing,
      rowTextStyle,
      loaderEmptyMessageErrorMessagePadding,
      emptyMessageTextStyle,
      errorMessageTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroTableThemeExtension(\n'
      '  decoration: $decoration,\n'
      '  columnTextStyle: $columnTextStyle,\n'
      '  columnSpacing: $columnSpacing,\n'
      '  rowTextStyle: $rowTextStyle,\n'
      '  loaderEmptyMessageErrorMessagePadding: $loaderEmptyMessageErrorMessagePadding\n'
      '  emptyMessageTextStyle: emptyMessageTextStyle,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      ');';
}
