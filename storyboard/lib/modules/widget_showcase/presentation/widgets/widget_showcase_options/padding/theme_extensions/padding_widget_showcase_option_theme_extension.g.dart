// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'padding_widget_showcase_option_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [PaddingWidgetShowcaseOptionThemeExtension] once the code is generated.
///
/// ```dart
/// class PaddingWidgetShowcaseOptionThemeExtension with $PaddingWidgetShowcaseOptionThemeExtensionMixin {}
/// ```
mixin $PaddingWidgetShowcaseOptionThemeExtensionMixin
    on ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension> {
  PaddingWidgetShowcaseOptionThemeExtension get self =>
      this as PaddingWidgetShowcaseOptionThemeExtension;

  @override
  PaddingWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return PaddingWidgetShowcaseOptionThemeExtension(
      spacing: spacing ?? self.spacing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PaddingWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
