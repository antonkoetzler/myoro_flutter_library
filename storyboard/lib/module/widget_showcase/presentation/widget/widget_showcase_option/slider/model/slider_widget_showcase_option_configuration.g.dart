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
  SliderWidgetShowcaseOptionConfiguration get self => this as SliderWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is SliderWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.initiallyEnabled == self.initiallyEnabled &&
        other.initialValue == self.initialValue &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.sliderOnChanged == self.sliderOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.initiallyEnabled,
      self.initialValue,
      self.checkboxOnChanged,
      self.sliderOnChanged,
    );
  }

  @override
  String toString() =>
      'SliderWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  initiallyEnabled: ${self.initiallyEnabled},\n'
      '  initialValue: ${self.initialValue},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  sliderOnChanged: ${self.sliderOnChanged},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $SliderWidgetShowcaseOptionConfigurationExtension on SliderWidgetShowcaseOptionConfiguration {
  SliderWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    bool? initiallyEnabled,
    double? initialValue,
    void Function(bool, double)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    void Function(double)? sliderOnChanged,
  }) {
    return SliderWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      initiallyEnabled: initiallyEnabled ?? self.initiallyEnabled,
      initialValue: initialValue ?? self.initialValue,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      sliderOnChanged: sliderOnChanged ?? self.sliderOnChanged,
    );
  }
}
