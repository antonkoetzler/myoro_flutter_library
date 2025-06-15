// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [IconWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class IconWidgetShowcaseOptionConfiguration with _$IconWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$IconWidgetShowcaseOptionConfigurationMixin {
  IconWidgetShowcaseOptionConfiguration get self =>
      this as IconWidgetShowcaseOptionConfiguration;

  IconWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    void Function(bool, IconData, double?)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    void Function(IconData)? iconOnChanged,
    void Function(double)? iconSizeOnChanged,
    bool iconSizeOnChangedProvided = true,
  }) {
    return IconWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? self.checkboxOnChanged)
              : null,
      iconOnChanged: iconOnChanged ?? self.iconOnChanged,
      iconSizeOnChanged:
          iconSizeOnChangedProvided
              ? (iconSizeOnChanged ?? self.iconSizeOnChanged)
              : null,
    );
  }

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
