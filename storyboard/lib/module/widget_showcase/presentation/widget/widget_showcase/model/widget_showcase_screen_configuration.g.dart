// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [WidgetShowcaseScreenConfiguration] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseScreenConfiguration with _$WidgetShowcaseScreenConfigurationMixin {}
/// ```
mixin _$WidgetShowcaseScreenConfigurationMixin {
  WidgetShowcaseScreenConfiguration get self => this as WidgetShowcaseScreenConfiguration;

  WidgetShowcaseScreenConfiguration copyWith({
    String? widgetName,
    Widget? widget,
    List<Widget>? configurationOptions,
    List<Widget>? stylingOptions,
  }) {
    return WidgetShowcaseScreenConfiguration(
      widgetName: widgetName ?? self.widgetName,
      widget: widget ?? self.widget,
      configurationOptions: configurationOptions ?? self.configurationOptions,
      stylingOptions: stylingOptions ?? self.stylingOptions,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.widgetName == self.widgetName &&
        other.widget == self.widget &&
        other.configurationOptions == self.configurationOptions &&
        other.stylingOptions == self.stylingOptions;
  }

  @override
  int get hashCode {
    return Object.hash(self.widgetName, self.widget, self.configurationOptions, self.stylingOptions);
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenConfiguration(\n'
      '  widgetName: ${self.widgetName},\n'
      '  widget: ${self.widget},\n'
      '  configurationOptions: ${self.configurationOptions},\n'
      '  stylingOptions: ${self.stylingOptions},\n'
      ');';
}
