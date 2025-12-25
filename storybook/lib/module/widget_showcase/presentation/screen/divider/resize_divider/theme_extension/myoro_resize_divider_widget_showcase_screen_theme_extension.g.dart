// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_resize_divider_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroResizeDividerWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroResizeDividerWidgetShowcaseScreenThemeExtension with _$MyoroResizeDividerWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroResizeDividerWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroResizeDividerWidgetShowcaseScreenThemeExtension> {
  MyoroResizeDividerWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroResizeDividerWidgetShowcaseScreenThemeExtension;

  @override
  MyoroResizeDividerWidgetShowcaseScreenThemeExtension copyWith({
    double? kittySize,
    BorderRadius? kittyBorderRadius,
    Color? coverColor,
  }) {
    return MyoroResizeDividerWidgetShowcaseScreenThemeExtension(
      kittySize: kittySize ?? self.kittySize,
      kittyBorderRadius: kittyBorderRadius ?? self.kittyBorderRadius,
      coverColor: coverColor ?? self.coverColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.kittySize == self.kittySize &&
        other.kittyBorderRadius == self.kittyBorderRadius &&
        other.coverColor == self.coverColor;
  }

  @override
  int get hashCode {
    return Object.hash(self.kittySize, self.kittyBorderRadius, self.coverColor);
  }

  @override
  String toString() =>
      'MyoroResizeDividerWidgetShowcaseScreenThemeExtension(\n'
      '  kittySize: ${self.kittySize},\n'
      '  kittyBorderRadius: ${self.kittyBorderRadius},\n'
      '  coverColor: ${self.coverColor},\n'
      ');';
}
