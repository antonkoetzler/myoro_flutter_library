import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroMenu].
@immutable
@myoroThemeExtension
class MyoroMenuThemeExtension extends ThemeExtension<MyoroMenuThemeExtension>
    with _$MyoroMenuThemeExtensionMixin
    implements MyoroMenuStyle {
  const MyoroMenuThemeExtension({
    this.constraints,
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.searchBarPadding,
    this.searchBarInputStyle,
    this.itemBorderRadius,
    this.dialogTextStyle,
    this.dialogTextLoaderPadding,
    this.selectedItemColor,
  });

  MyoroMenuThemeExtension.fake()
    : constraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
      backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      searchBarPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      searchBarInputStyle = faker.randomGenerator.boolean() ? MyoroInputStyleEnum.fake() : null,
      itemBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      dialogTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      dialogTextLoaderPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      selectedItemColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null;

  MyoroMenuThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
    MyoroDecorationThemeExtension decorationThemeExtension,
  ) : constraints = const BoxConstraints(),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      backgroundColor = colorScheme.primary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      searchBarPadding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      searchBarInputStyle = MyoroInputStyleEnum.outlined,
      itemBorderRadius = BorderRadius.zero,
      dialogTextStyle = textTheme.bodyMedium!,
      dialogTextLoaderPadding = const EdgeInsets.all(kMyoroMultiplier * 3.75),
      selectedItemColor = decorationThemeExtension.primaryTapBackgroundColor;

  /// Constraints of the menu.
  @override
  final BoxConstraints? constraints;

  /// Background color of the menu.
  @override
  final Color? backgroundColor;

  /// Border of the menu.
  @override
  final BoxBorder? border;

  /// Border radius of the menu.
  @override
  final BorderRadius? borderRadius;

  /// Padding of [_SearchBar].
  @override
  final EdgeInsets? searchBarPadding;

  /// [MyoroInputStyleEnum] of [_SearchBar].
  @override
  final MyoroInputStyleEnum? searchBarInputStyle;

  /// [BorderRadius] of [_Item].
  @override
  final BorderRadius? itemBorderRadius;

  /// Text style of [_EmptyMenuDialog].
  @override
  final TextStyle? dialogTextStyle;

  /// [EdgeInsets] of [_DialogText] & [_Loader].
  @override
  final EdgeInsets? dialogTextLoaderPadding;

  /// [Color] of a selected item.
  @override
  final Color? selectedItemColor;

  @override
  MyoroMenuThemeExtension lerp(covariant MyoroMenuThemeExtension? other, double t) {
    if (other is! MyoroMenuThemeExtension) return this;
    final style = MyoroMenuStyle.lerp(this, other, t);
    return MyoroMenuThemeExtension(
      constraints: style.constraints,
      backgroundColor: style.backgroundColor,
      border: style.border,
      borderRadius: style.borderRadius,
      searchBarPadding: style.searchBarPadding,
      searchBarInputStyle: style.searchBarInputStyle,
      itemBorderRadius: style.itemBorderRadius,
      dialogTextStyle: style.dialogTextStyle,
      dialogTextLoaderPadding: style.dialogTextLoaderPadding,
      selectedItemColor: style.selectedItemColor,
    );
  }

  /// Used to create the [ClipRRect.borderRadius] of the items to make
  /// sure that the menu item's background color won't extension the
  /// border of the [MyoroMenu]'s [MyoroMenuConfiguration.border].
  Radius createMenuContentRadius(Radius radius) {
    return Radius.elliptical(
      (radius.x - kMyoroMultiplier).clamp(0, double.infinity),
      (radius.y - kMyoroMultiplier).clamp(0, double.infinity),
    );
  }
}
