// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_card_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroCardWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCardWidgetShowcaseThemeExtension with _$MyoroCardWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroCardWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroCardWidgetShowcaseThemeExtension> {
  MyoroCardWidgetShowcaseThemeExtension get self =>
      this as MyoroCardWidgetShowcaseThemeExtension;

  @override
  MyoroCardWidgetShowcaseThemeExtension copyWith({TextStyle? textStyle}) {
    return MyoroCardWidgetShowcaseThemeExtension(
      textStyle: textStyle ?? self.textStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCardWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.textStyle]);
  }

  @override
  String toString() =>
      'MyoroCardWidgetShowcaseThemeExtension(\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
