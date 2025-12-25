// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_drawer_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDrawerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDrawerThemeExtension with _$MyoroDrawerThemeExtensionMixin {}
/// ```
mixin _$MyoroDrawerThemeExtensionMixin on ThemeExtension<MyoroDrawerThemeExtension> {
  MyoroDrawerThemeExtension get self => this as MyoroDrawerThemeExtension;

  @override
  MyoroDrawerThemeExtension copyWith({
    EdgeInsets? padding,
    bool paddingProvided = true,
    ShapeBorder? drawerShape,
    bool drawerShapeProvided = true,
    EdgeInsets? titleContentDividerPadding,
    bool titleContentDividerPaddingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    EdgeInsets? closeButtonContentPadding,
    bool closeButtonContentPaddingProvided = true,
    IconData? closeButtonIcon,
    bool closeButtonIconProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroDrawerThemeExtension(
      padding: paddingProvided ? (padding ?? self.padding) : null,
      drawerShape: drawerShapeProvided ? (drawerShape ?? self.drawerShape) : null,
      titleContentDividerPadding: titleContentDividerPaddingProvided
          ? (titleContentDividerPadding ?? self.titleContentDividerPadding)
          : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? self.titleTextStyle) : null,
      closeButtonContentPadding: closeButtonContentPaddingProvided
          ? (closeButtonContentPadding ?? self.closeButtonContentPadding)
          : null,
      closeButtonIcon: closeButtonIconProvided ? (closeButtonIcon ?? self.closeButtonIcon) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.drawerShape == self.drawerShape &&
        other.titleContentDividerPadding == self.titleContentDividerPadding &&
        other.titleTextStyle == self.titleTextStyle &&
        other.closeButtonContentPadding == self.closeButtonContentPadding &&
        other.closeButtonIcon == self.closeButtonIcon &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.padding,
      self.drawerShape,
      self.titleContentDividerPadding,
      self.titleTextStyle,
      self.closeButtonContentPadding,
      self.closeButtonIcon,
      self.spacing,
    );
  }

  @override
  String toString() =>
      'MyoroDrawerThemeExtension(\n'
      '  padding: ${self.padding},\n'
      '  drawerShape: ${self.drawerShape},\n'
      '  titleContentDividerPadding: ${self.titleContentDividerPadding},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  closeButtonContentPadding: ${self.closeButtonContentPadding},\n'
      '  closeButtonIcon: ${self.closeButtonIcon},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
