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

  @override
  bool operator ==(Object other) {
    return other is IconWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.initiallySelectedIcon == self.initiallySelectedIcon &&
        other.iconOnChanged == self.iconOnChanged &&
        other.initiallySelectedIconSize == self.initiallySelectedIconSize &&
        other.iconSizeOnChanged == self.iconSizeOnChanged &&
        other.iconSizeCheckboxOnChanged == self.iconSizeCheckboxOnChanged &&
        other.enabled == self.enabled &&
        other.enableOptionCheckboxOnChanged ==
            self.enableOptionCheckboxOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.initiallySelectedIcon,
      self.iconOnChanged,
      self.initiallySelectedIconSize,
      self.iconSizeOnChanged,
      self.iconSizeCheckboxOnChanged,
      self.enabled,
      self.enableOptionCheckboxOnChanged,
    );
  }

  @override
  String toString() =>
      'IconWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  initiallySelectedIcon: ${self.initiallySelectedIcon},\n'
      '  iconOnChanged: ${self.iconOnChanged},\n'
      '  initiallySelectedIconSize: ${self.initiallySelectedIconSize},\n'
      '  iconSizeOnChanged: ${self.iconSizeOnChanged},\n'
      '  iconSizeCheckboxOnChanged: ${self.iconSizeCheckboxOnChanged},\n'
      '  enabled: ${self.enabled},\n'
      '  enableOptionCheckboxOnChanged: ${self.enableOptionCheckboxOnChanged},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $IconWidgetShowcaseOptionConfigurationExtension
    on IconWidgetShowcaseOptionConfiguration {
  IconWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    IconData? initiallySelectedIcon,
    bool initiallySelectedIconProvided = true,
    void Function(IconData?)? iconOnChanged,
    double? initiallySelectedIconSize,
    bool initiallySelectedIconSizeProvided = true,
    void Function(double?)? iconSizeOnChanged,
    bool iconSizeOnChangedProvided = true,
    void Function(bool, double?)? iconSizeCheckboxOnChanged,
    bool iconSizeCheckboxOnChangedProvided = true,
    bool? enabled,
    bool enabledProvided = true,
    void Function(bool, IconData?, double?)? enableOptionCheckboxOnChanged,
    bool enableOptionCheckboxOnChangedProvided = true,
  }) {
    return IconWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      initiallySelectedIcon:
          initiallySelectedIconProvided
              ? (initiallySelectedIcon ?? self.initiallySelectedIcon)
              : null,
      iconOnChanged: iconOnChanged ?? self.iconOnChanged,
      initiallySelectedIconSize:
          initiallySelectedIconSizeProvided
              ? (initiallySelectedIconSize ?? self.initiallySelectedIconSize)
              : null,
      iconSizeOnChanged:
          iconSizeOnChangedProvided
              ? (iconSizeOnChanged ?? self.iconSizeOnChanged)
              : null,
      iconSizeCheckboxOnChanged:
          iconSizeCheckboxOnChangedProvided
              ? (iconSizeCheckboxOnChanged ?? self.iconSizeCheckboxOnChanged)
              : null,
      enabled: enabledProvided ? (enabled ?? self.enabled) : null,
      enableOptionCheckboxOnChanged:
          enableOptionCheckboxOnChangedProvided
              ? (enableOptionCheckboxOnChanged ??
                  self.enableOptionCheckboxOnChanged)
              : null,
    );
  }
}
