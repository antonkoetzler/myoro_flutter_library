// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_widget_showcase_option_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [IconWidgetShowcaseOptionThemeExtension] once the code is generated.
///
/// ```dart
/// class IconWidgetShowcaseOptionThemeExtension with _$IconWidgetShowcaseOptionThemeExtensionMixin {}
/// ```
mixin _$IconWidgetShowcaseOptionThemeExtensionMixin
    on ThemeExtension<IconWidgetShowcaseOptionThemeExtension> {
  IconWidgetShowcaseOptionThemeExtension get self =>
      this as IconWidgetShowcaseOptionThemeExtension;

  @override
  IconWidgetShowcaseOptionThemeExtension copyWith({double? spacing}) {
    return IconWidgetShowcaseOptionThemeExtension(
      spacing: spacing ?? self.spacing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IconWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'IconWidgetShowcaseOptionThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
