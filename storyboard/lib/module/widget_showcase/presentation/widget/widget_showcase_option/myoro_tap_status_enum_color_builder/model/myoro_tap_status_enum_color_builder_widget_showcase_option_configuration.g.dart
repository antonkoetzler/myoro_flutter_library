// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tap_status_enum_color_builder_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

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
    MyoroCheckboxOnChanged? checkboxOnChanged,
    Color? selectedIdleColor,
    bool selectedIdleColorProvided = true,
    MyoroSingleDropdownOnChanged<Color>? idleOnChanged,
    Color? selectedHoverColor,
    bool selectedHoverColorProvided = true,
    MyoroSingleDropdownOnChanged<Color>? hoverOnChanged,
    Color? selectedTapColor,
    bool selectedTapColorProvided = true,
    MyoroSingleDropdownOnChanged<Color>? tapOnChanged,
  }) {
    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(
      title: titleProvided ? (title ?? self.title) : null,
      enabled: enabled ?? self.enabled,
      label: label ?? self.label,
      checkboxOnChanged: checkboxOnChanged ?? self.checkboxOnChanged,
      selectedIdleColor: selectedIdleColorProvided ? (selectedIdleColor ?? self.selectedIdleColor) : null,
      idleOnChanged: idleOnChanged ?? self.idleOnChanged,
      selectedHoverColor: selectedHoverColorProvided ? (selectedHoverColor ?? self.selectedHoverColor) : null,
      hoverOnChanged: hoverOnChanged ?? self.hoverOnChanged,
      selectedTapColor: selectedTapColorProvided ? (selectedTapColor ?? self.selectedTapColor) : null,
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
        other.selectedIdleColor == self.selectedIdleColor &&
        other.idleOnChanged == self.idleOnChanged &&
        other.selectedHoverColor == self.selectedHoverColor &&
        other.hoverOnChanged == self.hoverOnChanged &&
        other.selectedTapColor == self.selectedTapColor &&
        other.tapOnChanged == self.tapOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.title,
      self.enabled,
      self.label,
      self.checkboxOnChanged,
      self.selectedIdleColor,
      self.idleOnChanged,
      self.selectedHoverColor,
      self.hoverOnChanged,
      self.selectedTapColor,
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
      '  selectedIdleColor: ${self.selectedIdleColor},\n'
      '  idleOnChanged: ${self.idleOnChanged},\n'
      '  selectedHoverColor: ${self.selectedHoverColor},\n'
      '  hoverOnChanged: ${self.hoverOnChanged},\n'
      '  selectedTapColor: ${self.selectedTapColor},\n'
      '  tapOnChanged: ${self.tapOnChanged},\n'
      ');';
}
