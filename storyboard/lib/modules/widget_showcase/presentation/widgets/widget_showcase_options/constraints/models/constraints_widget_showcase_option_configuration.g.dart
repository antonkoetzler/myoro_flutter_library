// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraints_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $ConstraintsWidgetShowcaseOptionConfigurationExtension
    on ConstraintsWidgetShowcaseOptionConfiguration {
  ConstraintsWidgetShowcaseOptionConfiguration copyWith({
    void Function(double)? minHeightOnChanged,
    void Function(double)? maxHeightOnChanged,
    void Function(double)? minWidthOnChanged,
    void Function(double)? maxWidthOnChanged,
  }) {
    return ConstraintsWidgetShowcaseOptionConfiguration(
      minHeightOnChanged: minHeightOnChanged ?? this.minHeightOnChanged,
      maxHeightOnChanged: maxHeightOnChanged ?? this.maxHeightOnChanged,
      minWidthOnChanged: minWidthOnChanged ?? this.minWidthOnChanged,
      maxWidthOnChanged: maxWidthOnChanged ?? this.maxWidthOnChanged,
    );
  }
}

/// Apply this mixin to [ConstraintsWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class ConstraintsWidgetShowcaseOptionConfiguration with $ConstraintsWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin $ConstraintsWidgetShowcaseOptionConfigurationMixin {
  ConstraintsWidgetShowcaseOptionConfiguration get self =>
      this as ConstraintsWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is ConstraintsWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.minHeightOnChanged == self.minHeightOnChanged &&
        other.maxHeightOnChanged == self.maxHeightOnChanged &&
        other.minWidthOnChanged == self.minWidthOnChanged &&
        other.maxWidthOnChanged == self.maxWidthOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.minHeightOnChanged,
      self.maxHeightOnChanged,
      self.minWidthOnChanged,
      self.maxWidthOnChanged,
    );
  }

  @override
  String toString() =>
      'ConstraintsWidgetShowcaseOptionConfiguration(\n'
      '  minHeightOnChanged: ${self.minHeightOnChanged},\n'
      '  maxHeightOnChanged: ${self.maxHeightOnChanged},\n'
      '  minWidthOnChanged: ${self.minWidthOnChanged},\n'
      '  maxWidthOnChanged: ${self.maxWidthOnChanged},\n'
      ');';
}
