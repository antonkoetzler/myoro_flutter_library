// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_constraints_widget_showcase_option_selector_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $BoxConstraintsWidgetShowcaseOptionSelectorConfigurationExtension
    on BoxConstraintsWidgetShowcaseOptionSelectorConfiguration {
  BoxConstraintsWidgetShowcaseOptionSelectorConfiguration copyWith({
    BoxConstraintsWidgetShowcaseOptionSelectorController? controller,
    String? label,
  }) {
    return BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(
      controller: controller ?? this.controller,
      label: label ?? this.label,
    );
  }
}

/// Apply this mixin to [BoxConstraintsWidgetShowcaseOptionSelectorConfiguration] once the code is generated.
///
/// ```dart
/// class BoxConstraintsWidgetShowcaseOptionSelectorConfiguration with $BoxConstraintsWidgetShowcaseOptionSelectorConfigurationMixin {}
/// ```
mixin $BoxConstraintsWidgetShowcaseOptionSelectorConfigurationMixin {
  BoxConstraintsWidgetShowcaseOptionSelectorConfiguration get self =>
      this as BoxConstraintsWidgetShowcaseOptionSelectorConfiguration;

  @override
  bool operator ==(Object other) {
    return other is BoxConstraintsWidgetShowcaseOptionSelectorConfiguration &&
        other.runtimeType == runtimeType &&
        other.controller == self.controller &&
        other.label == self.label;
  }

  @override
  int get hashCode {
    return Object.hash(self.controller, self.label);
  }

  @override
  String toString() =>
      'BoxConstraintsWidgetShowcaseOptionSelectorConfiguration(\n'
      '  controller: ${self.controller},\n'
      '  label: ${self.label},\n'
      ');';
}
