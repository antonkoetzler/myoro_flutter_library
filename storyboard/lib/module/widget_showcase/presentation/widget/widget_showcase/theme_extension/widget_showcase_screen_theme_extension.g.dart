// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [WidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseScreenThemeExtension with _$WidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$WidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<WidgetShowcaseScreenThemeExtension> {
  WidgetShowcaseScreenThemeExtension get self =>
      this as WidgetShowcaseScreenThemeExtension;

  @override
  WidgetShowcaseScreenThemeExtension copyWith({
    EdgeInsets? padding,
    BoxDecoration? decoration,
    EdgeInsets? contentPadding,
    IconData? widgetOptionsButtonIcon,
    double? widgetOptionsModalSpacing,
    EdgeInsets? widgetOptionsModalPadding,
    EdgeInsets? widgetOptionsModalItemPadding,
  }) {
    return WidgetShowcaseScreenThemeExtension(
      padding: padding ?? self.padding,
      decoration: decoration ?? self.decoration,
      contentPadding: contentPadding ?? self.contentPadding,
      widgetOptionsButtonIcon:
          widgetOptionsButtonIcon ?? self.widgetOptionsButtonIcon,
      widgetOptionsModalSpacing:
          widgetOptionsModalSpacing ?? self.widgetOptionsModalSpacing,
      widgetOptionsModalPadding:
          widgetOptionsModalPadding ?? self.widgetOptionsModalPadding,
      widgetOptionsModalItemPadding:
          widgetOptionsModalItemPadding ?? self.widgetOptionsModalItemPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.decoration == self.decoration &&
        other.contentPadding == self.contentPadding &&
        other.widgetOptionsButtonIcon == self.widgetOptionsButtonIcon &&
        other.widgetOptionsModalSpacing == self.widgetOptionsModalSpacing &&
        other.widgetOptionsModalPadding == self.widgetOptionsModalPadding &&
        other.widgetOptionsModalItemPadding ==
            self.widgetOptionsModalItemPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.padding,
      self.decoration,
      self.contentPadding,
      self.widgetOptionsButtonIcon,
      self.widgetOptionsModalSpacing,
      self.widgetOptionsModalPadding,
      self.widgetOptionsModalItemPadding,
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenThemeExtension(\n'
      '  padding: ${self.padding},\n'
      '  decoration: ${self.decoration},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  widgetOptionsButtonIcon: ${self.widgetOptionsButtonIcon},\n'
      '  widgetOptionsModalSpacing: ${self.widgetOptionsModalSpacing},\n'
      '  widgetOptionsModalPadding: ${self.widgetOptionsModalPadding},\n'
      '  widgetOptionsModalItemPadding: ${self.widgetOptionsModalItemPadding},\n'
      ');';
}
