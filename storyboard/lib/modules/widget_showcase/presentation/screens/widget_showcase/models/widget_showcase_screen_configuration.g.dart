// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_showcase_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $WidgetShowcaseScreenConfigurationExtension
    on WidgetShowcaseScreenConfiguration {
  WidgetShowcaseScreenConfiguration copyWith({
    String? widgetName,
    Widget? widget,
    List<Widget>? widgetOptions,
  }) {
    return WidgetShowcaseScreenConfiguration(
      widgetName: widgetName ?? this.widgetName,
      widget: widget ?? this.widget,
      widgetOptions: widgetOptions ?? this.widgetOptions,
    );
  }
}

/// Apply this mixin to [WidgetShowcaseScreenConfiguration] once the code is generated.
///
/// ```dart
/// class WidgetShowcaseScreenConfiguration with $WidgetShowcaseScreenConfigurationMixin {}
/// ```
mixin $WidgetShowcaseScreenConfigurationMixin {
  WidgetShowcaseScreenConfiguration get self =>
      this as WidgetShowcaseScreenConfiguration;

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.widgetName == self.widgetName &&
        other.widget == self.widget &&
        other.widgetOptions == self.widgetOptions;
  }

  @override
  int get hashCode {
    return Object.hash(self.widgetName, self.widget, self.widgetOptions);
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenConfiguration(\n'
      '  widgetName: ${self.widgetName},\n'
      '  widget: ${self.widget},\n'
      '  widgetOptions: ${self.widgetOptions},\n'
      ');';
}
