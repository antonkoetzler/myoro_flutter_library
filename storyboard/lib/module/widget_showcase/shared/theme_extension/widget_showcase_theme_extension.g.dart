// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [WidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseThemeExtension with _$WidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$WidgetShowcaseThemeExtensionMixin on ThemeExtension<WidgetShowcaseThemeExtension> {
  WidgetShowcaseThemeExtension get self => this as WidgetShowcaseThemeExtension;

  @override
  WidgetShowcaseThemeExtension copyWith({double? spacing, TextStyle? labelTextStyle}) {
    return WidgetShowcaseThemeExtension(
      spacing: spacing ?? self.spacing,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
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
      'WidgetShowcaseThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      ');';
}
