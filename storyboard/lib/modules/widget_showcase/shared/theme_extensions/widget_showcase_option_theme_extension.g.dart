// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_option_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [WidgetShowcaseOptionThemeExtension] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseOptionThemeExtension with _$WidgetShowcaseOptionThemeExtensionMixin {}
/// ```
mixin _$WidgetShowcaseOptionThemeExtensionMixin
    on ThemeExtension<WidgetShowcaseOptionThemeExtension> {
  WidgetShowcaseOptionThemeExtension get self =>
      this as WidgetShowcaseOptionThemeExtension;

  @override
  WidgetShowcaseOptionThemeExtension copyWith({
    double? spacing,
    TextStyle? labelTextStyle,
  }) {
    return WidgetShowcaseOptionThemeExtension(
      spacing: spacing ?? self.spacing,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.labelTextStyle == self.labelTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.labelTextStyle);
  }

  @override
  String toString() =>
      'WidgetShowcaseOptionThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      ');';
}
