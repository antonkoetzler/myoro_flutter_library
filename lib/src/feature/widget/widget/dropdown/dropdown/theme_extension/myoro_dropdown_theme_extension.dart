import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdown].
@immutable
@myoroThemeExtension
class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension>
    with _$MyoroDropdownThemeExtensionMixin
    implements MyoroDropdownStyle {
  /// Default constructor.
  const MyoroDropdownThemeExtension({
    this.constraints,
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.searchBarPadding,
    this.footerPadding,
    this.searchBarInputStyle,
    this.itemBorderRadius,
    this.dialogTextStyle,
    this.dialogTextLoaderPadding,
    this.selectedItemColor,
    this.expandingAndOverlaySpacing,
    this.itemsSectionSpacing,
    this.textAlign,
    this.inputTextStyle,
    this.contentPadding,
  });

  /// Fake constructor.
  MyoroDropdownThemeExtension.fake()
    : constraints = myoroNullableFake<BoxConstraints>(),
      backgroundColor = myoroNullableFake<Color>(),
      border = myoroNullableFake<BoxBorder>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      searchBarPadding = myoroNullableFake<EdgeInsets>(),
      footerPadding = myoroNullableFake<EdgeInsets>(),
      searchBarInputStyle = myoroNullableFake<MyoroInputStyleEnum>(),
      itemBorderRadius = myoroNullableFake<BorderRadius>(),
      dialogTextStyle = myoroNullableFake<TextStyle>(),
      dialogTextLoaderPadding = myoroNullableFake<EdgeInsets>(),
      selectedItemColor = myoroNullableFake<Color>(),
      expandingAndOverlaySpacing = myoroNullableFake<double>(),
      itemsSectionSpacing = myoroNullableFake<double>(),
      textAlign = myoroNullableFake<TextAlign>(),
      inputTextStyle = myoroNullableFake<TextStyle>(),
      contentPadding = myoroNullableFake<EdgeInsets>();

  /// Builder constructor.
  MyoroDropdownThemeExtension.builder()
    : constraints = null,
      backgroundColor = null,
      border = null,
      borderRadius = null,
      searchBarPadding = null,
      footerPadding = null,
      searchBarInputStyle = null,
      itemBorderRadius = null,
      dialogTextStyle = null,
      dialogTextLoaderPadding = null,
      selectedItemColor = null,
      expandingAndOverlaySpacing = kMyoroMultiplier * 1.5,
      itemsSectionSpacing = kMyoroMultiplier,
      textAlign = null,
      inputTextStyle = null,
      contentPadding = null;

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

  /// Padding of the search bar.
  @override
  final EdgeInsets? searchBarPadding;

  /// Padding of the footer.
  @override
  final EdgeInsets? footerPadding;

  /// [MyoroInputStyleEnum] of the search bar.
  @override
  final MyoroInputStyleEnum? searchBarInputStyle;

  /// [BorderRadius] of menu items.
  @override
  final BorderRadius? itemBorderRadius;

  /// Text style of the empty menu dialog text.
  @override
  final TextStyle? dialogTextStyle;

  /// [EdgeInsets] of the dialog text and loader.
  @override
  final EdgeInsets? dialogTextLoaderPadding;

  /// [Color] of a selected item.
  @override
  final Color? selectedItemColor;

  /// Spacing for [MyoroDropdownTypeEnum].
  @override
  final double? expandingAndOverlaySpacing;

  /// Items section spacing.
  @override
  final double? itemsSectionSpacing;

  /// Text alignment.
  @override
  final TextAlign? textAlign;

  /// [MyoroInputStyle] of the input.
  @override
  final TextStyle? inputTextStyle;

  /// [EdgeInsets] of the content padding of the input.
  @override
  final EdgeInsets? contentPadding;

  /// Lerp function.
  @override
  MyoroDropdownThemeExtension lerp(covariant MyoroDropdownThemeExtension? other, double t) {
    if (other is! MyoroDropdownThemeExtension) return this;
    final style = MyoroDropdownStyle.lerp(this, other, t);
    final constraints = style.constraints;
    final backgroundColor = style.backgroundColor;
    final border = style.border;
    final borderRadius = style.borderRadius;
    final searchBarPadding = style.searchBarPadding;
    final footerPadding = style.footerPadding;
    final searchBarInputStyle = style.searchBarInputStyle;
    final itemBorderRadius = style.itemBorderRadius;
    final dialogTextStyle = style.dialogTextStyle;
    final dialogTextLoaderPadding = style.dialogTextLoaderPadding;
    final selectedItemColor = style.selectedItemColor;
    final expandingAndOverlaySpacing = style.expandingAndOverlaySpacing;
    final itemsSectionSpacing = style.itemsSectionSpacing;
    final textAlign = style.textAlign;
    final inputTextStyle = style.inputTextStyle;

    return MyoroDropdownThemeExtension(
      constraints: constraints,
      backgroundColor: backgroundColor,
      border: border,
      borderRadius: borderRadius,
      searchBarPadding: searchBarPadding,
      footerPadding: footerPadding,
      searchBarInputStyle: searchBarInputStyle,
      itemBorderRadius: itemBorderRadius,
      dialogTextStyle: dialogTextStyle,
      dialogTextLoaderPadding: dialogTextLoaderPadding,
      selectedItemColor: selectedItemColor,
      expandingAndOverlaySpacing: expandingAndOverlaySpacing,
      itemsSectionSpacing: itemsSectionSpacing,
      textAlign: textAlign,
      inputTextStyle: inputTextStyle,
      contentPadding: contentPadding,
    );
  }
}
