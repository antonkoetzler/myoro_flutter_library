// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tab_view_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTabViewThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTabViewThemeExtension with _$MyoroTabViewThemeExtensionMixin {}
/// ```
mixin _$MyoroTabViewThemeExtensionMixin on ThemeExtension<MyoroTabViewThemeExtension> {
  MyoroTabViewThemeExtension get self => this as MyoroTabViewThemeExtension;

  @override
  MyoroTabViewThemeExtension copyWith({
    BorderRadius? tabButtonBorderRadius,
    bool tabButtonBorderRadiusProvided = true,
    double? tabButtonIconSize,
    bool tabButtonIconSizeProvided = true,
    TextStyle? tabButtonTextStyle,
    bool tabButtonTextStyleProvided = true,
  }) {
    return MyoroTabViewThemeExtension(
      tabButtonBorderRadius: tabButtonBorderRadiusProvided
          ? (tabButtonBorderRadius ?? self.tabButtonBorderRadius)
          : null,
      tabButtonIconSize: tabButtonIconSizeProvided ? (tabButtonIconSize ?? self.tabButtonIconSize) : null,
      tabButtonTextStyle: tabButtonTextStyleProvided ? (tabButtonTextStyle ?? self.tabButtonTextStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTabViewThemeExtension &&
        other.runtimeType == runtimeType &&
        other.tabButtonBorderRadius == self.tabButtonBorderRadius &&
        other.tabButtonIconSize == self.tabButtonIconSize &&
        other.tabButtonTextStyle == self.tabButtonTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.tabButtonBorderRadius, self.tabButtonIconSize, self.tabButtonTextStyle);
  }

  @override
  String toString() =>
      'MyoroTabViewThemeExtension(\n'
      '  tabButtonBorderRadius: ${self.tabButtonBorderRadius},\n'
      '  tabButtonIconSize: ${self.tabButtonIconSize},\n'
      '  tabButtonTextStyle: ${self.tabButtonTextStyle},\n'
      ');';
}
