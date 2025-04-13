import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTable].
final class MyoroTableThemeExtension
    extends ThemeExtension<MyoroTableThemeExtension> {
  /// [MyoroInputStyleEnum] of [_PageNumberControlInput].
  final MyoroInputStyleEnum pageNumberControlInputStyle;

  /// [IconData] of [_PageNumberControlPreviousPageButton].
  final IconData pageNumberControlPreviousPageButtonIcon;

  /// [IconData] of [_PageNumberControlNextPageButton].
  final IconData pageNumberControlNextPageButtonIcon;

  /// [Container.decoration] of [_Table].
  final BoxDecoration tableDecoration;

  /// Spacing between columns without dividers.
  final double columnSpacing;

  /// Standard [TextStyle] of a [_TitleCell].
  final TextStyle titleCellTextStyle;

  /// Size of [_Loader]'s [MyoroCircularLoader].
  final double loaderSize;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle errorMessageTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  final EdgeInsets dialogPadding;

  const MyoroTableThemeExtension({
    required this.pageNumberControlInputStyle,
    required this.pageNumberControlPreviousPageButtonIcon,
    required this.pageNumberControlNextPageButtonIcon,
    required this.tableDecoration,
    required this.columnSpacing,
    required this.titleCellTextStyle,
    required this.loaderSize,
    required this.emptyMessageTextStyle,
    required this.errorMessageTextStyle,
    required this.dialogPadding,
  });

  factory MyoroTableThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;
    return MyoroTableThemeExtension(
      pageNumberControlInputStyle: MyoroInputStyleEnum.fake(),
      pageNumberControlPreviousPageButtonIcon:
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      pageNumberControlNextPageButtonIcon:
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      tableDecoration: BoxDecoration(
        color:
            kMyoroTestColors[faker.randomGenerator.integer(
              kMyoroTestColors.length,
            )],
      ),
      columnSpacing: faker.randomGenerator.decimal(scale: 20),
      titleCellTextStyle: typography.randomTextStyle,
      loaderSize: faker.randomGenerator.decimal(scale: 100, min: 10),
      emptyMessageTextStyle: typography.randomTextStyle,
      errorMessageTextStyle: typography.randomTextStyle,
      dialogPadding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
    );
  }

  factory MyoroTableThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    final TextStyle headlineLarge = textTheme.headlineLarge!;

    return MyoroTableThemeExtension(
      pageNumberControlInputStyle: MyoroInputStyleEnum.underlined,
      pageNumberControlPreviousPageButtonIcon: Icons.keyboard_arrow_left,
      pageNumberControlNextPageButtonIcon: Icons.keyboard_arrow_right,
      tableDecoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
        border: Border.all(
          width: kMyoroBorderLength,
          color: colorScheme.onPrimary,
        ),
      ),
      columnSpacing: 10,
      titleCellTextStyle: textTheme.bodyMedium!,
      loaderSize: 35,
      emptyMessageTextStyle: headlineLarge,
      errorMessageTextStyle: headlineLarge.copyWith(
        fontSize: MyoroFontSizeEnum.extraLarge.size,
        color: colorScheme.error,
      ),
      dialogPadding: const EdgeInsets.all(15),
    );
  }

  @override
  MyoroTableThemeExtension copyWith({
    MyoroInputStyleEnum? pageNumberControlInputStyle,
    IconData? pageNumberControlPreviousPageButtonIcon,
    IconData? pageNumberControlNextPageButtonIcon,
    BoxDecoration? tableDecoration,
    double? columnSpacing,
    TextStyle? titleCellTextStyle,
    double? loaderSize,
    TextStyle? emptyMessageTextStyle,
    TextStyle? errorMessageTextStyle,
    EdgeInsets? dialogPadding,
  }) {
    return MyoroTableThemeExtension(
      pageNumberControlInputStyle:
          pageNumberControlInputStyle ?? this.pageNumberControlInputStyle,
      pageNumberControlPreviousPageButtonIcon:
          pageNumberControlPreviousPageButtonIcon ??
          this.pageNumberControlPreviousPageButtonIcon,
      pageNumberControlNextPageButtonIcon:
          pageNumberControlNextPageButtonIcon ??
          this.pageNumberControlNextPageButtonIcon,
      tableDecoration: tableDecoration ?? this.tableDecoration,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      titleCellTextStyle: titleCellTextStyle ?? this.titleCellTextStyle,
      loaderSize: loaderSize ?? this.loaderSize,
      emptyMessageTextStyle:
          emptyMessageTextStyle ?? this.emptyMessageTextStyle,
      errorMessageTextStyle:
          errorMessageTextStyle ?? this.errorMessageTextStyle,
      dialogPadding: dialogPadding ?? this.dialogPadding,
    );
  }

  @override
  MyoroTableThemeExtension lerp(
    covariant ThemeExtension<MyoroTableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableThemeExtension) return this;
    return copyWith(
      pageNumberControlInputStyle: myoroLerp(
        pageNumberControlInputStyle,
        other.pageNumberControlInputStyle,
        t,
      ),
      pageNumberControlPreviousPageButtonIcon: myoroLerp(
        pageNumberControlPreviousPageButtonIcon,
        other.pageNumberControlPreviousPageButtonIcon,
        t,
      ),
      pageNumberControlNextPageButtonIcon: myoroLerp(
        pageNumberControlNextPageButtonIcon,
        other.pageNumberControlNextPageButtonIcon,
        t,
      ),
      tableDecoration: BoxDecoration.lerp(
        tableDecoration,
        other.tableDecoration,
        t,
      ),
      columnSpacing: lerpDouble(columnSpacing, other.columnSpacing, t),
      titleCellTextStyle: TextStyle.lerp(
        titleCellTextStyle,
        other.titleCellTextStyle,
        t,
      ),
      loaderSize: lerpDouble(loaderSize, other.loaderSize, t),
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
      dialogPadding: EdgeInsets.lerp(dialogPadding, other.dialogPadding, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.pageNumberControlInputStyle == pageNumberControlInputStyle &&
        other.pageNumberControlPreviousPageButtonIcon ==
            pageNumberControlPreviousPageButtonIcon &&
        other.pageNumberControlNextPageButtonIcon ==
            pageNumberControlNextPageButtonIcon &&
        other.tableDecoration == tableDecoration &&
        other.columnSpacing == columnSpacing &&
        other.titleCellTextStyle == titleCellTextStyle &&
        other.loaderSize == loaderSize &&
        other.emptyMessageTextStyle == emptyMessageTextStyle &&
        other.errorMessageTextStyle == errorMessageTextStyle &&
        other.dialogPadding == dialogPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      pageNumberControlInputStyle,
      pageNumberControlPreviousPageButtonIcon,
      pageNumberControlNextPageButtonIcon,
      tableDecoration,
      columnSpacing,
      titleCellTextStyle,
      loaderSize,
      emptyMessageTextStyle,
      errorMessageTextStyle,
      dialogPadding,
    );
  }

  @override
  String toString() =>
      'MyoroTableThemeExtension(\n'
      '  pageNumberControlInputStyle: $pageNumberControlInputStyle,\n'
      '  pageNumberControlPreviousPageButtonIcon: $pageNumberControlPreviousPageButtonIcon,\n'
      '  pageNumberControlNextPageButtonIcon: $pageNumberControlNextPageButtonIcon,\n'
      '  tableDecoration: $tableDecoration,\n'
      '  columnSpacing: $columnSpacing,\n'
      '  titleCellTextStyle: $titleCellTextStyle,\n'
      '  loaderSize: $loaderSize,\n'
      '  emptyMessageTextStyle: $emptyMessageTextStyle,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      '  dialogPadding: $dialogPadding,\n'
      ');';
}
