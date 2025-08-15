// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_drawer_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroDrawerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDrawerThemeExtension with _$MyoroDrawerThemeExtensionMixin {}
/// ```
mixin _$MyoroDrawerThemeExtensionMixin on ThemeExtension<MyoroDrawerThemeExtension> {
  MyoroDrawerThemeExtension get self => this as MyoroDrawerThemeExtension;

  @override
  MyoroDrawerThemeExtension copyWith({
    EdgeInsets? drawerContentPadding,
    EdgeInsets? drawerPadding,
    ShapeBorder? drawerShape,
    EdgeInsets? titleContentDividerPadding,
    TextStyle? titleTextStyle,
    IconData? closeButtonDrawerIcon,
    IconData? closeButtonEndDrawerIcon,
  }) {
    return MyoroDrawerThemeExtension(
      drawerContentPadding: drawerContentPadding ?? self.drawerContentPadding,
      drawerPadding: drawerPadding ?? self.drawerPadding,
      drawerShape: drawerShape ?? self.drawerShape,
      titleContentDividerPadding: titleContentDividerPadding ?? self.titleContentDividerPadding,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      closeButtonDrawerIcon: closeButtonDrawerIcon ?? self.closeButtonDrawerIcon,
      closeButtonEndDrawerIcon: closeButtonEndDrawerIcon ?? self.closeButtonEndDrawerIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.drawerPadding == self.drawerPadding &&
        other.drawerContentPadding == self.drawerContentPadding &&
        other.drawerShape == self.drawerShape &&
        other.titleContentDividerPadding == self.titleContentDividerPadding &&
        other.titleTextStyle == self.titleTextStyle &&
        other.closeButtonDrawerIcon == self.closeButtonDrawerIcon &&
        other.closeButtonEndDrawerIcon == self.closeButtonEndDrawerIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.drawerPadding,
      self.drawerContentPadding,
      self.drawerShape,
      self.titleContentDividerPadding,
      self.titleTextStyle,
      self.closeButtonDrawerIcon,
      self.closeButtonEndDrawerIcon,
    );
  }

  @override
  String toString() =>
      'MyoroDrawerThemeExtension(\n'
      '  drawerPadding: ${self.drawerPadding},\n'
      '  drawerContentPadding: ${self.drawerContentPadding},\n'
      '  drawerShape: ${self.drawerShape},\n'
      '  titleContentDividerPadding: ${self.titleContentDividerPadding},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  closeButtonDrawerIcon: ${self.closeButtonDrawerIcon},\n'
      '  closeButtonEndDrawerIcon: ${self.closeButtonEndDrawerIcon},\n'
      ');';
}
