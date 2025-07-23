import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroMenu].
@immutable
@myoroThemeExtension
class MyoroMenuThemeExtension extends ThemeExtension<MyoroMenuThemeExtension> with _$MyoroMenuThemeExtensionMixin {
  const MyoroMenuThemeExtension({
    required this.backgroundColor,
    required this.borderRadius,
    required this.searchBarPadding,
    required this.searchBarInputStyle,
    required this.itemBorderRadius,
    required this.dialogTextStyle,
    required this.dialogTextLoaderPadding,
  });

  // coverage:ignore-start
  MyoroMenuThemeExtension.fake()
    : backgroundColor = myoroFake<Color>(),
      borderRadius = myoroFake<BorderRadius>(),
      searchBarPadding = myoroFake<EdgeInsets>(),
      searchBarInputStyle = MyoroInputStyleEnum.fake(),
      itemBorderRadius = myoroFake<BorderRadius>(),
      dialogTextStyle = myoroFake<TextStyle>(),
      dialogTextLoaderPadding = myoroFake<EdgeInsets>();
  // coverage:ignore-end

  MyoroMenuThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : backgroundColor = colorScheme.primary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      searchBarPadding = const EdgeInsets.all(10),
      searchBarInputStyle = MyoroInputStyleEnum.outlined,
      itemBorderRadius = BorderRadius.zero,
      dialogTextStyle = textTheme.bodyMedium!,
      dialogTextLoaderPadding = const EdgeInsets.all(15);

  /// Background color of the menu.
  final Color backgroundColor;

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

  @override
  MyoroMenuThemeExtension lerp(covariant ThemeExtension<MyoroMenuThemeExtension>? other, double t) {
    if (other is! MyoroMenuThemeExtension) return this;
    return copyWith(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      searchBarPadding: EdgeInsets.lerp(searchBarPadding, other.searchBarPadding, t),
      searchBarInputStyle: myoroLerp(searchBarInputStyle, other.searchBarInputStyle, t),
      itemBorderRadius: BorderRadius.lerp(itemBorderRadius, other.itemBorderRadius, t),
      dialogTextStyle: TextStyle.lerp(dialogTextStyle, other.dialogTextStyle, t),
      dialogTextLoaderPadding: EdgeInsets.lerp(dialogTextLoaderPadding, other.dialogTextLoaderPadding, t),
    );
  }

  /// Used to create the [ClipRRect.borderRadius] of the items to make
  /// sure that the menu item's background color won't extension the
  /// border of the [MyoroMenu]'s [MyoroMenuConfiguration.border].
  Radius createMenuContentRadius(Radius radius) {
    return Radius.elliptical((radius.x - 4).clamp(0, double.infinity), (radius.y - 4).clamp(0, double.infinity));
  }
}
