// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tap_status_enum_color_builder_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration with _$MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfigurationMixin {
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration get self =>
      this as MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration;

  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration copyWith({
    String? title,
    bool titleProvided = true,
    bool? enabled,
    String? label,
    void Function(bool)? checkboxOnChanged,
    Color? initiallySelectedIdleColor,
    bool initiallySelectedIdleColorProvided = true,
    void Function(Color?)? idleOnChanged,
    Color? initiallySelectedHoverColor,
    bool initiallySelectedHoverColorProvided = true,
    void Function(Color?)? hoverOnChanged,
    Color? initiallySelectedTapColor,
    bool initiallySelectedTapColorProvided = true,
    void Function(Color?)? tapOnChanged,
  }) {
    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(
      title: titleProvided ? (title ?? self.title) : null,
      enabled: enabled ?? self.enabled,
      label: label ?? self.label,
      checkboxOnChanged: checkboxOnChanged ?? self.checkboxOnChanged,
      initiallySelectedIdleColor:
          initiallySelectedIdleColorProvided ? (initiallySelectedIdleColor ?? self.initiallySelectedIdleColor) : null,
      idleOnChanged: idleOnChanged ?? self.idleOnChanged,
      initiallySelectedHoverColor:
          initiallySelectedHoverColorProvided
              ? (initiallySelectedHoverColor ?? self.initiallySelectedHoverColor)
              : null,
      hoverOnChanged: hoverOnChanged ?? self.hoverOnChanged,
      initiallySelectedTapColor:
          initiallySelectedTapColorProvided ? (initiallySelectedTapColor ?? self.initiallySelectedTapColor) : null,
      tapOnChanged: tapOnChanged ?? self.tapOnChanged,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.enabled == self.enabled &&
        other.label == self.label &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.initiallySelectedIdleColor == self.initiallySelectedIdleColor &&
        other.idleOnChanged == self.idleOnChanged &&
        other.initiallySelectedHoverColor == self.initiallySelectedHoverColor &&
        other.hoverOnChanged == self.hoverOnChanged &&
        other.initiallySelectedTapColor == self.initiallySelectedTapColor &&
        other.tapOnChanged == self.tapOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.title,
      self.enabled,
      self.label,
      self.checkboxOnChanged,
      self.initiallySelectedIdleColor,
      self.idleOnChanged,
      self.initiallySelectedHoverColor,
      self.hoverOnChanged,
      self.initiallySelectedTapColor,
      self.tapOnChanged,
    );
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(\n'
      '  title: ${self.title},\n'
      '  enabled: ${self.enabled},\n'
      '  label: ${self.label},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  initiallySelectedIdleColor: ${self.initiallySelectedIdleColor},\n'
      '  idleOnChanged: ${self.idleOnChanged},\n'
      '  initiallySelectedHoverColor: ${self.initiallySelectedHoverColor},\n'
      '  hoverOnChanged: ${self.hoverOnChanged},\n'
      '  initiallySelectedTapColor: ${self.initiallySelectedTapColor},\n'
      '  tapOnChanged: ${self.tapOnChanged},\n'
      ');';
}
