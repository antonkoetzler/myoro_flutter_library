// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [IconWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class IconWidgetShowcaseOptionConfiguration with _$IconWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$IconWidgetShowcaseOptionConfigurationMixin {
  IconWidgetShowcaseOptionConfiguration get self => this as IconWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is IconWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.selectedIcon == self.selectedIcon &&
        other.iconOnChanged == self.iconOnChanged &&
        other.selectedIconSize == self.selectedIconSize &&
        other.iconSizeOnChanged == self.iconSizeOnChanged &&
        other.iconSizeCheckboxOnChanged == self.iconSizeCheckboxOnChanged &&
        other.enabled == self.enabled &&
        other.enableOptionCheckboxOnChanged == self.enableOptionCheckboxOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.selectedIcon,
      self.iconOnChanged,
      self.selectedIconSize,
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
      '  selectedIcon: ${self.selectedIcon},\n'
      '  iconOnChanged: ${self.iconOnChanged},\n'
      '  selectedIconSize: ${self.selectedIconSize},\n'
      '  iconSizeOnChanged: ${self.iconSizeOnChanged},\n'
      '  iconSizeCheckboxOnChanged: ${self.iconSizeCheckboxOnChanged},\n'
      '  enabled: ${self.enabled},\n'
      '  enableOptionCheckboxOnChanged: ${self.enableOptionCheckboxOnChanged},\n'
      ');';
}
