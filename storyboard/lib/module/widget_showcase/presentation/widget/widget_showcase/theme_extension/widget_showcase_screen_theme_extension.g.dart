// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [WidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseScreenThemeExtension with _$WidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$WidgetShowcaseScreenThemeExtensionMixin on ThemeExtension<WidgetShowcaseScreenThemeExtension> {
  WidgetShowcaseScreenThemeExtension get self => this as WidgetShowcaseScreenThemeExtension;

  @override
  WidgetShowcaseScreenThemeExtension copyWith({
    Color? color,
    EdgeInsets? padding,
    IconData? widgetOptionsButtonIcon,
    double? widgetOptionsModalSpacing,
    EdgeInsets? widgetOptionsModalPadding,
    EdgeInsets? widgetOptionsModalItemPadding,
    EdgeInsets? widgetOptionsModalCloseButtonPadding,
  }) {
    return WidgetShowcaseScreenThemeExtension(
      color: color ?? self.color,
      padding: padding ?? self.padding,
      widgetOptionsButtonIcon: widgetOptionsButtonIcon ?? self.widgetOptionsButtonIcon,
      widgetOptionsModalSpacing: widgetOptionsModalSpacing ?? self.widgetOptionsModalSpacing,
      widgetOptionsModalPadding: widgetOptionsModalPadding ?? self.widgetOptionsModalPadding,
      widgetOptionsModalItemPadding: widgetOptionsModalItemPadding ?? self.widgetOptionsModalItemPadding,
      widgetOptionsModalCloseButtonPadding:
          widgetOptionsModalCloseButtonPadding ?? self.widgetOptionsModalCloseButtonPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.color == self.color &&
        other.padding == self.padding &&
        other.widgetOptionsButtonIcon == self.widgetOptionsButtonIcon &&
        other.widgetOptionsModalSpacing == self.widgetOptionsModalSpacing &&
        other.widgetOptionsModalPadding == self.widgetOptionsModalPadding &&
        other.widgetOptionsModalItemPadding == self.widgetOptionsModalItemPadding &&
        other.widgetOptionsModalCloseButtonPadding == self.widgetOptionsModalCloseButtonPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.color,
      self.padding,
      self.widgetOptionsButtonIcon,
      self.widgetOptionsModalSpacing,
      self.widgetOptionsModalPadding,
      self.widgetOptionsModalItemPadding,
      self.widgetOptionsModalCloseButtonPadding,
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenThemeExtension(\n'
      '  color: ${self.color},\n'
      '  padding: ${self.padding},\n'
      '  widgetOptionsButtonIcon: ${self.widgetOptionsButtonIcon},\n'
      '  widgetOptionsModalSpacing: ${self.widgetOptionsModalSpacing},\n'
      '  widgetOptionsModalPadding: ${self.widgetOptionsModalPadding},\n'
      '  widgetOptionsModalItemPadding: ${self.widgetOptionsModalItemPadding},\n'
      '  widgetOptionsModalCloseButtonPadding: ${self.widgetOptionsModalCloseButtonPadding},\n'
      ');';
}
