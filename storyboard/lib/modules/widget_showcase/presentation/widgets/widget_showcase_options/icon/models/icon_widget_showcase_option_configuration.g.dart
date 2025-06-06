// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $IconWidgetShowcaseOptionConfigurationExtension
    on IconWidgetShowcaseOptionConfiguration {
  IconWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    void Function(bool, IconData, double?)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    void Function(IconData)? iconOnChanged,
    void Function(double)? iconSizeOnChanged,
    bool iconSizeOnChangedProvided = true,
  }) {
    return IconWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      iconOnChanged: iconOnChanged ?? this.iconOnChanged,
      iconSizeOnChanged:
          iconSizeOnChangedProvided
              ? (iconSizeOnChanged ?? this.iconSizeOnChanged)
              : null,
    );
  }
}

/// Apply this mixin to [IconWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class IconWidgetShowcaseOptionConfiguration with $IconWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin $IconWidgetShowcaseOptionConfigurationMixin {
  IconWidgetShowcaseOptionConfiguration get self =>
      this as IconWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is IconWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.iconOnChanged == self.iconOnChanged &&
        other.iconSizeOnChanged == self.iconSizeOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.checkboxOnChanged,
      self.iconOnChanged,
      self.iconSizeOnChanged,
    );
  }

  @override
  String toString() =>
      'IconWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  iconOnChanged: ${self.iconOnChanged},\n'
      '  iconSizeOnChanged: ${self.iconSizeOnChanged},\n'
      ');';
}
