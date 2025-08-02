// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroPieGraphWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphWidgetShowcaseScreenThemeExtension with _$MyoroPieGraphWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroPieGraphWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroPieGraphWidgetShowcaseScreenThemeExtension> {
  MyoroPieGraphWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroPieGraphWidgetShowcaseScreenThemeExtension;

  @override
  MyoroPieGraphWidgetShowcaseScreenThemeExtension copyWith({
    BorderRadius? centerWidgetBorderRadius,
    double? centerWidgetSize,
  }) {
    return MyoroPieGraphWidgetShowcaseScreenThemeExtension(
      centerWidgetBorderRadius:
          centerWidgetBorderRadius ?? self.centerWidgetBorderRadius,
      centerWidgetSize: centerWidgetSize ?? self.centerWidgetSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.centerWidgetBorderRadius == self.centerWidgetBorderRadius &&
        other.centerWidgetSize == self.centerWidgetSize;
  }

  @override
  int get hashCode {
    return Object.hash(self.centerWidgetBorderRadius, self.centerWidgetSize);
  }

  @override
  String toString() =>
      'MyoroPieGraphWidgetShowcaseScreenThemeExtension(\n'
      '  centerWidgetBorderRadius: ${self.centerWidgetBorderRadius},\n'
      '  centerWidgetSize: ${self.centerWidgetSize},\n'
      ');';
}
