// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroMenuThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroMenuThemeExtension with _$MyoroMenuThemeExtensionMixin {}
/// ```
mixin _$MyoroMenuThemeExtensionMixin on ThemeExtension<MyoroMenuThemeExtension> {
  MyoroMenuThemeExtension get self => this as MyoroMenuThemeExtension;

  @override
  MyoroMenuThemeExtension copyWith({
    Color? backgroundColor,
    BorderRadius? borderRadius,
    EdgeInsets? searchBarPadding,
    MyoroInputStyleEnum? searchBarInputStyle,
    BorderRadius? itemBorderRadius,
    TextStyle? dialogTextStyle,
    EdgeInsets? dialogTextLoaderPadding,
  }) {
    return MyoroMenuThemeExtension(
      backgroundColor: backgroundColor ?? self.backgroundColor,
      borderRadius: borderRadius ?? self.borderRadius,
      searchBarPadding: searchBarPadding ?? self.searchBarPadding,
      searchBarInputStyle: searchBarInputStyle ?? self.searchBarInputStyle,
      itemBorderRadius: itemBorderRadius ?? self.itemBorderRadius,
      dialogTextStyle: dialogTextStyle ?? self.dialogTextStyle,
      dialogTextLoaderPadding: dialogTextLoaderPadding ?? self.dialogTextLoaderPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.borderRadius == self.borderRadius &&
        other.searchBarPadding == self.searchBarPadding &&
        other.searchBarInputStyle == self.searchBarInputStyle &&
        other.itemBorderRadius == self.itemBorderRadius &&
        other.dialogTextStyle == self.dialogTextStyle &&
        other.dialogTextLoaderPadding == self.dialogTextLoaderPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.borderRadius,
      self.searchBarPadding,
      self.searchBarInputStyle,
      self.itemBorderRadius,
      self.dialogTextStyle,
      self.dialogTextLoaderPadding,
    );
  }

  @override
  String toString() =>
      'MyoroMenuThemeExtension(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  searchBarPadding: ${self.searchBarPadding},\n'
      '  searchBarInputStyle: ${self.searchBarInputStyle},\n'
      '  itemBorderRadius: ${self.itemBorderRadius},\n'
      '  dialogTextStyle: ${self.dialogTextStyle},\n'
      '  dialogTextLoaderPadding: ${self.dialogTextLoaderPadding},\n'
      ');';
}
