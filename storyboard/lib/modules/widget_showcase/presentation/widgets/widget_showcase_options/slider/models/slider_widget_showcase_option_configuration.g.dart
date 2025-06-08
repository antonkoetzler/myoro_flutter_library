// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [SliderWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class SliderWidgetShowcaseOptionConfiguration with _$SliderWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$SliderWidgetShowcaseOptionConfigurationMixin {
  SliderWidgetShowcaseOptionConfiguration get self =>
      this as SliderWidgetShowcaseOptionConfiguration;

  SliderWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    void Function(bool, double)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    void Function(double)? sliderOnChanged,
  }) {
    return SliderWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? self.checkboxOnChanged)
              : null,
      sliderOnChanged: sliderOnChanged ?? self.sliderOnChanged,
    );
  }

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
