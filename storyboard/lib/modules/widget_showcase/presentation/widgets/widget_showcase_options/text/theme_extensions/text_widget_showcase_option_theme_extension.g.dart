// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_widget_showcase_option_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [TextWidgetShowcaseOptionThemeExtension] once the code is generated.
///
/// ```dart
/// class TextWidgetShowcaseOptionThemeExtension with $TextWidgetShowcaseOptionThemeExtensionMixin {}
/// ```
mixin $TextWidgetShowcaseOptionThemeExtensionMixin
    on ThemeExtension<TextWidgetShowcaseOptionThemeExtension> {
  TextWidgetShowcaseOptionThemeExtension get self =>
      this as TextWidgetShowcaseOptionThemeExtension;

  @override
  TextWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return TextWidgetShowcaseOptionThemeExtension(
      spacing: spacing ?? self.spacing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TextWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'TextWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
