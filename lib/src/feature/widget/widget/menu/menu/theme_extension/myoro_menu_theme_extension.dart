import 'package:faker/faker.dart';
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
  });

  // coverage:ignore-start
  MyoroMenuThemeExtension.fake()
    : constraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
      backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      searchBarPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      searchBarInputStyle = faker.randomGenerator.boolean() ? MyoroInputStyleEnum.fake() : null,
      itemBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      dialogTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      dialogTextLoaderPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;
  // coverage:ignore-end

  MyoroMenuThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : constraints = const BoxConstraints(),
      border = null,
      backgroundColor = colorScheme.primary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      searchBarPadding = const EdgeInsets.all(10),
      searchBarInputStyle = MyoroInputStyleEnum.outlined,
      itemBorderRadius = BorderRadius.zero,
      dialogTextStyle = textTheme.bodyMedium!,
      dialogTextLoaderPadding = const EdgeInsets.all(15);

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

  @override
  MyoroMenuThemeExtension lerp(covariant ThemeExtension<MyoroMenuThemeExtension>? other, double t) {
    if (other is! MyoroMenuThemeExtension) return this;

    final constraints = BoxConstraints.lerp(this.constraints, other.constraints, t);
    final backgroundColor = Color.lerp(this.backgroundColor, other.backgroundColor, t);
    final border = BoxBorder.lerp(this.border, other.border, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final searchBarPadding = EdgeInsets.lerp(this.searchBarPadding, other.searchBarPadding, t);
    final searchBarInputStyle = myoroFallbackLerp(this.searchBarInputStyle, other.searchBarInputStyle, t);
    final itemBorderRadius = BorderRadius.lerp(this.itemBorderRadius, other.itemBorderRadius, t);
    final dialogTextStyle = TextStyle.lerp(this.dialogTextStyle, other.dialogTextStyle, t);
    final dialogTextLoaderPadding = EdgeInsets.lerp(this.dialogTextLoaderPadding, other.dialogTextLoaderPadding, t);

    return copyWith(
      constraints: constraints,
      constraintsProvided: constraints != null,
      backgroundColor: backgroundColor,
      backgroundColorProvided: true,
      border: border,
      borderProvided: border != null,
      borderRadius: borderRadius,
      borderRadiusProvided: true,
      searchBarPadding: searchBarPadding,
      searchBarPaddingProvided: true,
      searchBarInputStyle: searchBarInputStyle,
      searchBarInputStyleProvided: true,
      itemBorderRadius: itemBorderRadius,
      itemBorderRadiusProvided: true,
      dialogTextStyle: dialogTextStyle,
      dialogTextStyleProvided: true,
      dialogTextLoaderPadding: dialogTextLoaderPadding,
      dialogTextLoaderPaddingProvided: true,
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
