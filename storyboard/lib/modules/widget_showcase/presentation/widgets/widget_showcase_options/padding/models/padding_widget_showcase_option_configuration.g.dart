// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'padding_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $PaddingWidgetShowcaseOptionConfigurationExtension
    on PaddingWidgetShowcaseOptionConfiguration {
  PaddingWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    void Function(bool, EdgeInsets)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    void Function(EdgeInsets)? paddingOnChanged,
  }) {
    return PaddingWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      paddingOnChanged: paddingOnChanged ?? this.paddingOnChanged,
    );
  }
}

/// Apply this mixin to [PaddingWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class PaddingWidgetShowcaseOptionConfiguration with $PaddingWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin $PaddingWidgetShowcaseOptionConfigurationMixin {
  PaddingWidgetShowcaseOptionConfiguration get self =>
      this as PaddingWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is PaddingWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.paddingOnChanged == self.paddingOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.checkboxOnChanged,
      self.paddingOnChanged,
    );
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  paddingOnChanged: ${self.paddingOnChanged},\n'
      ');';
}
