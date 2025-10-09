// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [WidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseThemeExtension with _$WidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$WidgetShowcaseThemeExtensionMixin on ThemeExtension<WidgetShowcaseThemeExtension> {
  WidgetShowcaseThemeExtension get self => this as WidgetShowcaseThemeExtension;

  @override
  WidgetShowcaseThemeExtension copyWith({double? spacing, TextStyle? labelTextStyle, EdgeInsets? contentPadding}) {
    return WidgetShowcaseThemeExtension(
      spacing: spacing ?? self.spacing,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
      contentPadding: contentPadding ?? self.contentPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.labelTextStyle == self.labelTextStyle &&
        other.contentPadding == self.contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.labelTextStyle, self.contentPadding);
  }

  @override
  String toString() =>
      'WidgetShowcaseThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  contentPadding: ${self.contentPadding},\n'
      ');';
}
