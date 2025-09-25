// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tab_view_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTabViewStyle] once the code is generated.
///
/// ```dart
/// class MyoroTabViewStyle with _$MyoroTabViewStyleMixin {}
/// ```
mixin _$MyoroTabViewStyleMixin {
  MyoroTabViewStyle get self => this as MyoroTabViewStyle;

  MyoroTabViewStyle copyWith({
    BorderRadius? tabButtonBorderRadius,
    bool tabButtonBorderRadiusProvided = true,
    Color? tabButtonIdleColor,
    bool tabButtonIdleColorProvided = true,
    Color? tabButtonHoverColor,
    bool tabButtonHoverColorProvided = true,
    Color? tabButtonTapColor,
    bool tabButtonTapColorProvided = true,
    double? tabButtonIconSize,
    bool tabButtonIconSizeProvided = true,
    TextStyle? tabButtonTextStyle,
    bool tabButtonTextStyleProvided = true,
  }) {
    return MyoroTabViewStyle(
      tabButtonBorderRadius: tabButtonBorderRadiusProvided
          ? (tabButtonBorderRadius ?? self.tabButtonBorderRadius)
          : null,
      tabButtonIdleColor: tabButtonIdleColorProvided ? (tabButtonIdleColor ?? self.tabButtonIdleColor) : null,
      tabButtonHoverColor: tabButtonHoverColorProvided ? (tabButtonHoverColor ?? self.tabButtonHoverColor) : null,
      tabButtonTapColor: tabButtonTapColorProvided ? (tabButtonTapColor ?? self.tabButtonTapColor) : null,
      tabButtonIconSize: tabButtonIconSizeProvided ? (tabButtonIconSize ?? self.tabButtonIconSize) : null,
      tabButtonTextStyle: tabButtonTextStyleProvided ? (tabButtonTextStyle ?? self.tabButtonTextStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTabViewStyle &&
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
      'MyoroTabViewStyle(\n'
      '  tabButtonBorderRadius: ${self.tabButtonBorderRadius},\n'
      '  tabButtonIdleColor: ${self.tabButtonIdleColor},\n'
      '  tabButtonHoverColor: ${self.tabButtonHoverColor},\n'
      '  tabButtonTapColor: ${self.tabButtonTapColor},\n'
      '  tabButtonIconSize: ${self.tabButtonIconSize},\n'
      '  tabButtonTextStyle: ${self.tabButtonTextStyle},\n'
      ');';
}
