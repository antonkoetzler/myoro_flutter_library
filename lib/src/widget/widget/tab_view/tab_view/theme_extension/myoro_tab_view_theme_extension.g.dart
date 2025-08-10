// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tab_view_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroTabViewThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTabViewThemeExtension with _$MyoroTabViewThemeExtensionMixin {}
/// ```
mixin _$MyoroTabViewThemeExtensionMixin
    on ThemeExtension<MyoroTabViewThemeExtension> {
  MyoroTabViewThemeExtension get self => this as MyoroTabViewThemeExtension;

  @override
  MyoroTabViewThemeExtension copyWith({
    BorderRadius? tabButtonBorderRadius,
    Color? tabButtonIdleColor,
    Color? tabButtonHoverColor,
    Color? tabButtonTapColor,
    double? tabButtonIconSize,
    TextStyle? tabButtonTextStyle,
  }) {
    return MyoroTabViewThemeExtension(
      tabButtonBorderRadius:
          tabButtonBorderRadius ?? self.tabButtonBorderRadius,
      tabButtonIdleColor: tabButtonIdleColor ?? self.tabButtonIdleColor,
      tabButtonHoverColor: tabButtonHoverColor ?? self.tabButtonHoverColor,
      tabButtonTapColor: tabButtonTapColor ?? self.tabButtonTapColor,
      tabButtonIconSize: tabButtonIconSize ?? self.tabButtonIconSize,
      tabButtonTextStyle: tabButtonTextStyle ?? self.tabButtonTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTabViewThemeExtension &&
        other.runtimeType == runtimeType &&
        other.tabButtonBorderRadius == self.tabButtonBorderRadius &&
        other.tabButtonIdleColor == self.tabButtonIdleColor &&
        other.tabButtonHoverColor == self.tabButtonHoverColor &&
        other.tabButtonTapColor == self.tabButtonTapColor &&
        other.tabButtonIconSize == self.tabButtonIconSize &&
        other.tabButtonTextStyle == self.tabButtonTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.tabButtonBorderRadius,
      self.tabButtonIdleColor,
      self.tabButtonHoverColor,
      self.tabButtonTapColor,
      self.tabButtonIconSize,
      self.tabButtonTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroTabViewThemeExtension(\n'
      '  tabButtonBorderRadius: ${self.tabButtonBorderRadius},\n'
      '  tabButtonIdleColor: ${self.tabButtonIdleColor},\n'
      '  tabButtonHoverColor: ${self.tabButtonHoverColor},\n'
      '  tabButtonTapColor: ${self.tabButtonTapColor},\n'
      '  tabButtonIconSize: ${self.tabButtonIconSize},\n'
      '  tabButtonTextStyle: ${self.tabButtonTextStyle},\n'
      ');';
}
