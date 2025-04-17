import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroTable].
final class MyoroTableThemeExtension
    extends ThemeExtension<MyoroTableThemeExtension> {
  /// Spacing of items in [_PageNumberControl]
  final double pageNumberControlSpacing;

  /// [MyoroInputStyleEnum] of [_PageNumberControlInput].
  final MyoroInputStyleEnum pageNumberControlInputStyle;

  /// [MyoroIconTextHoverButton.iconSize] of [_PageNumberControlTraversalButton].
  final double pageNumberControlTraversalButtonIconSize;

  /// [MyoroHoverButtonConfiguration] of [_PageNumberControlTraversalButton].
  final MyoroHoverButtonConfiguration
  pageNumberControlTraversalButtonConfiguration;

  /// [IconData] of [_PageNumberControlPreviousPageButton].
  final IconData pageNumberControlPreviousPageButtonIcon;

  /// [IconData] of [_PageNumberControlNextPageButton].
  final IconData pageNumberControlNextPageButtonIcon;

  /// [Container.decoration] of [_Table].
  final BoxDecoration tableDecoration;

  /// Spacing between [_PaginationControls] and [_Table].
  final double paginationControlsTableSpacing;

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
    required this.pageNumberControlSpacing,
    required this.pageNumberControlInputStyle,
    required this.pageNumberControlTraversalButtonIconSize,
    required this.pageNumberControlTraversalButtonConfiguration,
    required this.pageNumberControlPreviousPageButtonIcon,
    required this.pageNumberControlNextPageButtonIcon,
    required this.tableDecoration,
    required this.paginationControlsTableSpacing,
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
      pageNumberControlSpacing: faker.randomGenerator.decimal(scale: 20),
      pageNumberControlInputStyle: MyoroInputStyleEnum.fake(),
      pageNumberControlTraversalButtonIconSize: faker.randomGenerator.decimal(
        scale: 100,
        min: 5,
      ),
      pageNumberControlTraversalButtonConfiguration:
          MyoroHoverButtonConfiguration.fake(),
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
      paginationControlsTableSpacing: faker.randomGenerator.decimal(scale: 10),
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
      pageNumberControlSpacing: 5,
      pageNumberControlInputStyle: MyoroInputStyleEnum.underlined,
      pageNumberControlTraversalButtonIconSize: 15,
      pageNumberControlTraversalButtonConfiguration:
          const MyoroHoverButtonConfiguration(bordered: true),
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
      paginationControlsTableSpacing: 10,
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
    double? pageNumberControlSpacing,
    MyoroInputStyleEnum? pageNumberControlInputStyle,
    double? pageNumberControlTraversalButtonIconSize,
    MyoroHoverButtonConfiguration?
    pageNumberControlTraversalButtonConfiguration,
    IconData? pageNumberControlPreviousPageButtonIcon,
    IconData? pageNumberControlNextPageButtonIcon,
    BoxDecoration? tableDecoration,
    double? paginationControlsTableSpacing,
    double? columnSpacing,
    TextStyle? titleCellTextStyle,
    double? loaderSize,
    TextStyle? emptyMessageTextStyle,
    TextStyle? errorMessageTextStyle,
    EdgeInsets? dialogPadding,
  }) {
    return MyoroTableThemeExtension(
      pageNumberControlSpacing:
          pageNumberControlSpacing ?? this.pageNumberControlSpacing,
      pageNumberControlInputStyle:
          pageNumberControlInputStyle ?? this.pageNumberControlInputStyle,
      pageNumberControlTraversalButtonIconSize:
          pageNumberControlTraversalButtonIconSize ??
          this.pageNumberControlTraversalButtonIconSize,
      pageNumberControlTraversalButtonConfiguration:
          pageNumberControlTraversalButtonConfiguration ??
          this.pageNumberControlTraversalButtonConfiguration,
      pageNumberControlPreviousPageButtonIcon:
          pageNumberControlPreviousPageButtonIcon ??
          this.pageNumberControlPreviousPageButtonIcon,
      pageNumberControlNextPageButtonIcon:
          pageNumberControlNextPageButtonIcon ??
          this.pageNumberControlNextPageButtonIcon,
      tableDecoration: tableDecoration ?? this.tableDecoration,
      paginationControlsTableSpacing:
          paginationControlsTableSpacing ?? this.paginationControlsTableSpacing,
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
      pageNumberControlSpacing: lerpDouble(
        pageNumberControlSpacing,
        other.pageNumberControlSpacing,
        t,
      ),
      pageNumberControlInputStyle: myoroLerp(
        pageNumberControlInputStyle,
        other.pageNumberControlInputStyle,
        t,
      ),
      pageNumberControlTraversalButtonIconSize: lerpDouble(
        pageNumberControlTraversalButtonIconSize,
        other.pageNumberControlTraversalButtonIconSize,
        t,
      ),
      pageNumberControlTraversalButtonConfiguration:
          MyoroHoverButtonConfiguration.lerp(
            pageNumberControlTraversalButtonConfiguration,
            other.pageNumberControlTraversalButtonConfiguration,
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
      paginationControlsTableSpacing: lerpDouble(
        paginationControlsTableSpacing,
        other.paginationControlsTableSpacing,
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
        other.pageNumberControlSpacing == pageNumberControlSpacing &&
        other.pageNumberControlInputStyle == pageNumberControlInputStyle &&
        other.pageNumberControlTraversalButtonIconSize ==
            pageNumberControlTraversalButtonIconSize &&
        other.pageNumberControlTraversalButtonConfiguration ==
            pageNumberControlTraversalButtonConfiguration &&
        other.pageNumberControlPreviousPageButtonIcon ==
            pageNumberControlPreviousPageButtonIcon &&
        other.pageNumberControlNextPageButtonIcon ==
            pageNumberControlNextPageButtonIcon &&
        other.tableDecoration == tableDecoration &&
        other.paginationControlsTableSpacing ==
            paginationControlsTableSpacing &&
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
      pageNumberControlSpacing,
      pageNumberControlInputStyle,
      pageNumberControlTraversalButtonIconSize,
      pageNumberControlTraversalButtonConfiguration,
      pageNumberControlPreviousPageButtonIcon,
      pageNumberControlNextPageButtonIcon,
      tableDecoration,
      paginationControlsTableSpacing,
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
      '  pageNumberControlSpacing: $pageNumberControlSpacing,\n'
      '  pageNumberControlInputStyle: $pageNumberControlInputStyle,\n'
      '  pageNumberControlTraversalButtonIconSize: $pageNumberControlTraversalButtonIconSize,\n'
      '  pageNumberControlPreviousPageButtonIcon: $pageNumberControlPreviousPageButtonIcon,\n'
      '  pageNumberControlNextPageButtonIcon: $pageNumberControlNextPageButtonIcon,\n'
      '  tableDecoration: $tableDecoration,\n'
      '  paginationControlsTableSpacing: $paginationControlsTableSpacing,\n'
      '  columnSpacing: $columnSpacing,\n'
      '  titleCellTextStyle: $titleCellTextStyle,\n'
      '  loaderSize: $loaderSize,\n'
      '  emptyMessageTextStyle: $emptyMessageTextStyle,\n'
      '  errorMessageTextStyle: $errorMessageTextStyle,\n'
      '  dialogPadding: $dialogPadding,\n'
      ');';
}
