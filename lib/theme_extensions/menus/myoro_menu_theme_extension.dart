import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroMenu].
final class MyoroMenuThemeExtension
    extends ThemeExtension<MyoroMenuThemeExtension> {
  /// Background color of the menu.
  final Color primaryColor;

  /// Border of the menu.
  final Border border;

  /// Border radius of the menu.
  final BorderRadius borderRadius;

  /// Padding of [_SearchBar].
  final EdgeInsets searchBarPadding;

  /// [MyoroInputStyleEnum] of [_SearchBar].
  final MyoroInputStyleEnum searchBarInputStyle;

  /// [BorderRadius] of [_Item].
  final BorderRadius itemBorderRadius;

  /// Text style of [_EmptyMenuDialog].
  final TextStyle dialogTextStyle;

  const MyoroMenuThemeExtension({
    required this.primaryColor,
    required this.border,
    required this.borderRadius,
    required this.searchBarPadding,
    required this.searchBarInputStyle,
    required this.itemBorderRadius,
    required this.dialogTextStyle,
  });

  MyoroMenuThemeExtension.fake()
    : primaryColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      border = Border.all(
        width: faker.randomGenerator.decimal(),
        color:
            kMyoroTestColors[faker.randomGenerator.integer(
              kMyoroTestColors.length,
            )],
      ),
      borderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
      searchBarPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      searchBarInputStyle = MyoroInputStyleEnum.fake(),
      itemBorderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
      dialogTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroMenuThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
      border = Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      borderRadius = MyoroDecorationHelper.inputBorderRadius,
      searchBarPadding = const EdgeInsets.all(10),
      searchBarInputStyle = MyoroInputStyleEnum.outlined,
      itemBorderRadius = BorderRadius.zero,
      dialogTextStyle = textTheme.bodyMedium!;

  @override
  MyoroMenuThemeExtension copyWith({
    BoxConstraints? constraints,
    Color? primaryColor,
    Border? border,
    BorderRadius? borderRadius,
    EdgeInsets? searchBarPadding,
    MyoroInputStyleEnum? searchBarInputStyle,
    BorderRadius? itemBorderRadius,
    TextStyle? dialogTextStyle,
  }) {
    return MyoroMenuThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      searchBarPadding: searchBarPadding ?? this.searchBarPadding,
      searchBarInputStyle: searchBarInputStyle ?? this.searchBarInputStyle,
      itemBorderRadius: itemBorderRadius ?? this.itemBorderRadius,
      dialogTextStyle: dialogTextStyle ?? this.dialogTextStyle,
    );
  }

  @override
  MyoroMenuThemeExtension lerp(
    covariant ThemeExtension<MyoroMenuThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroMenuThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      searchBarPadding: EdgeInsets.lerp(
        searchBarPadding,
        other.searchBarPadding,
        t,
      ),
      searchBarInputStyle: myoroLerp(
        searchBarInputStyle,
        other.searchBarInputStyle,
        t,
      ),
      itemBorderRadius: BorderRadius.lerp(
        itemBorderRadius,
        other.itemBorderRadius,
        t,
      ),
      dialogTextStyle: TextStyle.lerp(
        dialogTextStyle,
        other.dialogTextStyle,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == primaryColor &&
        other.border == border &&
        other.borderRadius == borderRadius &&
        other.searchBarPadding == searchBarPadding &&
        other.searchBarInputStyle == searchBarInputStyle &&
        other.itemBorderRadius == itemBorderRadius &&
        other.dialogTextStyle == dialogTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryColor,
      border,
      borderRadius,
      searchBarPadding,
      searchBarInputStyle,
      itemBorderRadius,
      dialogTextStyle,
    );
  }
}
