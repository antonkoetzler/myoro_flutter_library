// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroPieGraphWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphWidgetShowcaseThemeExtension with _$MyoroPieGraphWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroPieGraphWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension> {
  MyoroPieGraphWidgetShowcaseThemeExtension get self =>
      this as MyoroPieGraphWidgetShowcaseThemeExtension;

  @override
  MyoroPieGraphWidgetShowcaseThemeExtension copyWith({
    BorderRadius? centerWidgetBorderRadius,
    double? centerWidgetSize,
  }) {
    return MyoroPieGraphWidgetShowcaseThemeExtension(
      centerWidgetBorderRadius:
          centerWidgetBorderRadius ?? self.centerWidgetBorderRadius,
      centerWidgetSize: centerWidgetSize ?? self.centerWidgetSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphWidgetShowcaseThemeExtension &&
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
      'MyoroPieGraphWidgetShowcaseThemeExtension(\n'
      '  centerWidgetBorderRadius: ${self.centerWidgetBorderRadius},\n'
      '  centerWidgetSize: ${self.centerWidgetSize},\n'
      ');';
}
