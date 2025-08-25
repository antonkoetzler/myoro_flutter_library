// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'padding_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [PaddingWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class PaddingWidgetShowcaseOptionConfiguration with _$PaddingWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$PaddingWidgetShowcaseOptionConfigurationMixin {
  PaddingWidgetShowcaseOptionConfiguration get self => this as PaddingWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is PaddingWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.enabled == self.enabled &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.paddingOnChanged == self.paddingOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.label, self.enabled, self.checkboxOnChanged, self.paddingOnChanged);
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  enabled: ${self.enabled},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  paddingOnChanged: ${self.paddingOnChanged},\n'
      ');';
}
