// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuStyle] once the code is generated.
///
/// ```dart
/// class MyoroMenuStyle with _$MyoroMenuStyleMixin {}
/// ```
mixin _$MyoroMenuStyleMixin {
  MyoroMenuStyle get self => this as MyoroMenuStyle;

  MyoroMenuStyle copyWith({
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
    double? itemsSectionSpacing,
    bool itemsSectionSpacingProvided = true,
  }) {
    return MyoroMenuStyle(
      constraints: constraintsProvided ? (constraints ?? self.constraints) : null,
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
      border: borderProvided ? (border ?? self.border) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      searchBarPadding: searchBarPaddingProvided ? (searchBarPadding ?? self.searchBarPadding) : null,
      searchBarInputStyle: searchBarInputStyleProvided ? (searchBarInputStyle ?? self.searchBarInputStyle) : null,
      itemBorderRadius: itemBorderRadiusProvided ? (itemBorderRadius ?? self.itemBorderRadius) : null,
      dialogTextStyle: dialogTextStyleProvided ? (dialogTextStyle ?? self.dialogTextStyle) : null,
      dialogTextLoaderPadding: dialogTextLoaderPaddingProvided
          ? (dialogTextLoaderPadding ?? self.dialogTextLoaderPadding)
          : null,
      selectedItemColor: selectedItemColorProvided ? (selectedItemColor ?? self.selectedItemColor) : null,
      itemsSectionSpacing: itemsSectionSpacingProvided ? (itemsSectionSpacing ?? self.itemsSectionSpacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuStyle &&
        other.runtimeType == runtimeType &&
        other.constraints == self.constraints &&
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.searchBarPadding == self.searchBarPadding &&
        other.searchBarInputStyle == self.searchBarInputStyle &&
        other.itemBorderRadius == self.itemBorderRadius &&
        other.dialogTextStyle == self.dialogTextStyle &&
        other.dialogTextLoaderPadding == self.dialogTextLoaderPadding &&
        other.selectedItemColor == self.selectedItemColor &&
        other.itemsSectionSpacing == self.itemsSectionSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.constraints,
      self.backgroundColor,
      self.border,
      self.borderRadius,
      self.searchBarPadding,
      self.searchBarInputStyle,
      self.itemBorderRadius,
      self.dialogTextStyle,
      self.dialogTextLoaderPadding,
      self.selectedItemColor,
      self.itemsSectionSpacing,
    );
  }

  @override
  String toString() =>
      'MyoroMenuStyle(\n'
      '  constraints: ${self.constraints},\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  searchBarPadding: ${self.searchBarPadding},\n'
      '  searchBarInputStyle: ${self.searchBarInputStyle},\n'
      '  itemBorderRadius: ${self.itemBorderRadius},\n'
      '  dialogTextStyle: ${self.dialogTextStyle},\n'
      '  dialogTextLoaderPadding: ${self.dialogTextLoaderPadding},\n'
      '  selectedItemColor: ${self.selectedItemColor},\n'
      '  itemsSectionSpacing: ${self.itemsSectionSpacing},\n'
      ');';
}
