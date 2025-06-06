// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $SliderWidgetShowcaseOptionConfigurationExtension
    on SliderWidgetShowcaseOptionConfiguration {
  SliderWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    void Function(bool, double)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    void Function(double)? sliderOnChanged,
  }) {
    return SliderWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      sliderOnChanged: sliderOnChanged ?? this.sliderOnChanged,
    );
  }
}

/// Apply this mixin to [SliderWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class SliderWidgetShowcaseOptionConfiguration with $SliderWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin $SliderWidgetShowcaseOptionConfigurationMixin {
  SliderWidgetShowcaseOptionConfiguration get self =>
      this as SliderWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is SliderWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.sliderOnChanged == self.sliderOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.checkboxOnChanged,
      self.sliderOnChanged,
    );
  }

  @override
  String toString() =>
      'SliderWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  sliderOnChanged: ${self.sliderOnChanged},\n'
      ');';
}
