// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dropdown_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDropdownThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDropdownThemeExtension with _$MyoroDropdownThemeExtensionMixin {}
/// ```
mixin _$MyoroDropdownThemeExtensionMixin on ThemeExtension<MyoroDropdownThemeExtension> {
  MyoroDropdownThemeExtension get self => this as MyoroDropdownThemeExtension;

  @override
  MyoroDropdownThemeExtension copyWith({
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    BoxBorder? border,
    bool borderProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    EdgeInsets? searchBarPadding,
    bool searchBarPaddingProvided = true,
    EdgeInsets? footerPadding,
    bool footerPaddingProvided = true,
    MyoroInputStyleEnum? searchBarInputStyle,
    bool searchBarInputStyleProvided = true,
    BorderRadius? itemBorderRadius,
    bool itemBorderRadiusProvided = true,
    TextStyle? dialogTextStyle,
    bool dialogTextStyleProvided = true,
    EdgeInsets? dialogTextLoaderPadding,
    bool dialogTextLoaderPaddingProvided = true,
    Color? selectedItemColor,
    bool selectedItemColorProvided = true,
    double? expandingAndOverlaySpacing,
    bool expandingAndOverlaySpacingProvided = true,
    double? itemsSectionSpacing,
    bool itemsSectionSpacingProvided = true,
    TextAlign? textAlign,
    bool textAlignProvided = true,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
  }) {
    return MyoroDropdownThemeExtension(
      constraints: constraintsProvided ? (constraints ?? self.constraints) : null,
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
      border: borderProvided ? (border ?? self.border) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      searchBarPadding: searchBarPaddingProvided ? (searchBarPadding ?? self.searchBarPadding) : null,
      footerPadding: footerPaddingProvided ? (footerPadding ?? self.footerPadding) : null,
      searchBarInputStyle: searchBarInputStyleProvided ? (searchBarInputStyle ?? self.searchBarInputStyle) : null,
      itemBorderRadius: itemBorderRadiusProvided ? (itemBorderRadius ?? self.itemBorderRadius) : null,
      dialogTextStyle: dialogTextStyleProvided ? (dialogTextStyle ?? self.dialogTextStyle) : null,
      dialogTextLoaderPadding: dialogTextLoaderPaddingProvided
          ? (dialogTextLoaderPadding ?? self.dialogTextLoaderPadding)
          : null,
      selectedItemColor: selectedItemColorProvided ? (selectedItemColor ?? self.selectedItemColor) : null,
      expandingAndOverlaySpacing: expandingAndOverlaySpacingProvided
          ? (expandingAndOverlaySpacing ?? self.expandingAndOverlaySpacing)
          : null,
      itemsSectionSpacing: itemsSectionSpacingProvided ? (itemsSectionSpacing ?? self.itemsSectionSpacing) : null,
      textAlign: textAlignProvided ? (textAlign ?? self.textAlign) : null,
      inputTextStyle: inputTextStyleProvided ? (inputTextStyle ?? self.inputTextStyle) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDropdownThemeExtension &&
        other.runtimeType == runtimeType &&
        other.constraints == self.constraints &&
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.searchBarPadding == self.searchBarPadding &&
        other.footerPadding == self.footerPadding &&
        other.searchBarInputStyle == self.searchBarInputStyle &&
        other.itemBorderRadius == self.itemBorderRadius &&
        other.dialogTextStyle == self.dialogTextStyle &&
        other.dialogTextLoaderPadding == self.dialogTextLoaderPadding &&
        other.selectedItemColor == self.selectedItemColor &&
        other.expandingAndOverlaySpacing == self.expandingAndOverlaySpacing &&
        other.itemsSectionSpacing == self.itemsSectionSpacing &&
        other.textAlign == self.textAlign &&
        other.inputTextStyle == self.inputTextStyle &&
        other.contentPadding == self.contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.constraints,
      self.backgroundColor,
      self.border,
      self.borderRadius,
      self.searchBarPadding,
      self.footerPadding,
      self.searchBarInputStyle,
      self.itemBorderRadius,
      self.dialogTextStyle,
      self.dialogTextLoaderPadding,
      self.selectedItemColor,
      self.expandingAndOverlaySpacing,
      self.itemsSectionSpacing,
      self.textAlign,
      self.inputTextStyle,
      self.contentPadding,
    );
  }

  @override
  String toString() =>
      'MyoroDropdownThemeExtension(\n'
      '  constraints: ${self.constraints},\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  searchBarPadding: ${self.searchBarPadding},\n'
      '  footerPadding: ${self.footerPadding},\n'
      '  searchBarInputStyle: ${self.searchBarInputStyle},\n'
      '  itemBorderRadius: ${self.itemBorderRadius},\n'
      '  dialogTextStyle: ${self.dialogTextStyle},\n'
      '  dialogTextLoaderPadding: ${self.dialogTextLoaderPadding},\n'
      '  selectedItemColor: ${self.selectedItemColor},\n'
      '  expandingAndOverlaySpacing: ${self.expandingAndOverlaySpacing},\n'
      '  itemsSectionSpacing: ${self.itemsSectionSpacing},\n'
      '  textAlign: ${self.textAlign},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  contentPadding: ${self.contentPadding},\n'
      ');';
}
