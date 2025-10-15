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
  PaddingWidgetShowcaseOptionConfiguration get self =>
      this as PaddingWidgetShowcaseOptionConfiguration;

  PaddingWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    bool? enabled,
    EdgeInsets? padding,
    bool paddingProvided = true,
    PaddingWidgetShowcaseOptionTitleCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    PaddingWidgetShowcaseOptionSelectionOnChanged? paddingOnChanged,
  }) {
    return PaddingWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      enabled: enabled ?? self.enabled,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? self.checkboxOnChanged)
              : null,
      paddingOnChanged: paddingOnChanged ?? self.paddingOnChanged,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PaddingWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.enabled == self.enabled &&
        other.padding == self.padding &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.paddingOnChanged == self.paddingOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.enabled,
      self.padding,
      self.checkboxOnChanged,
      self.paddingOnChanged,
    );
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  enabled: ${self.enabled},\n'
      '  padding: ${self.padding},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  paddingOnChanged: ${self.paddingOnChanged},\n'
      ');';
}
