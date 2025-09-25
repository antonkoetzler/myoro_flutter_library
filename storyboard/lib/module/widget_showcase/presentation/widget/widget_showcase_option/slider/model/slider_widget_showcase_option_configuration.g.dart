// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [SliderWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class SliderWidgetShowcaseOptionConfiguration with _$SliderWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$SliderWidgetShowcaseOptionConfigurationMixin {
  SliderWidgetShowcaseOptionConfiguration get self => this as SliderWidgetShowcaseOptionConfiguration;

  SliderWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    bool? enabled,
    double? value,
    SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroSliderOnChanged<dynamic>? sliderOnChanged,
  }) {
    return SliderWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      enabled: enabled ?? self.enabled,
      value: value ?? self.value,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      sliderOnChanged: sliderOnChanged ?? self.sliderOnChanged,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SliderWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.enabled == self.enabled &&
        other.value == self.value &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.sliderOnChanged == self.sliderOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.label, self.enabled, self.value, self.checkboxOnChanged, self.sliderOnChanged);
  }

  @override
  String toString() =>
      'SliderWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  enabled: ${self.enabled},\n'
      '  value: ${self.value},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  sliderOnChanged: ${self.sliderOnChanged},\n'
      ');';
}
