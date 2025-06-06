import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroMenu].
@immutable
@myoroThemeExtension
class MyoroMenuThemeExtension extends ThemeExtension<MyoroMenuThemeExtension> with $MyoroMenuThemeExtensionMixin {
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

  /// [EdgeInsets] of [_DialogText] & [_Loader].
  final EdgeInsets dialogTextLoaderPadding;

  const MyoroMenuThemeExtension({
    required this.primaryColor,
    required this.border,
    required this.borderRadius,
    required this.searchBarPadding,
    required this.searchBarInputStyle,
    required this.itemBorderRadius,
    required this.dialogTextStyle,
    required this.dialogTextLoaderPadding,
  });

  MyoroMenuThemeExtension.fake()
    : primaryColor = myoroFake<Color>(),
      border = myoroFake<Border>(),
      borderRadius = myoroFake<BorderRadius>(),
      searchBarPadding = myoroFake<EdgeInsets>(),
      searchBarInputStyle = MyoroInputStyleEnum.fake(),
      itemBorderRadius = myoroFake<BorderRadius>(),
      dialogTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      dialogTextLoaderPadding = myoroFake<EdgeInsets>();

  MyoroMenuThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
      border = Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      searchBarPadding = const EdgeInsets.all(10),
      searchBarInputStyle = MyoroInputStyleEnum.outlined,
      itemBorderRadius = BorderRadius.zero,
      dialogTextStyle = textTheme.bodyMedium!,
      dialogTextLoaderPadding = const EdgeInsets.all(15);

  @override
  MyoroMenuThemeExtension lerp(covariant ThemeExtension<MyoroMenuThemeExtension>? other, double t) {
    if (other is! MyoroMenuThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      searchBarPadding: EdgeInsets.lerp(searchBarPadding, other.searchBarPadding, t),
      searchBarInputStyle: myoroLerp(searchBarInputStyle, other.searchBarInputStyle, t),
      itemBorderRadius: BorderRadius.lerp(itemBorderRadius, other.itemBorderRadius, t),
      dialogTextStyle: TextStyle.lerp(dialogTextStyle, other.dialogTextStyle, t),
      dialogTextLoaderPadding: EdgeInsets.lerp(dialogTextLoaderPadding, other.dialogTextLoaderPadding, t),
    );
  }
}
