// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [TextWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class TextWidgetShowcaseOptionConfiguration with _$TextWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$TextWidgetShowcaseOptionConfigurationMixin {
  TextWidgetShowcaseOptionConfiguration get self =>
      this as TextWidgetShowcaseOptionConfiguration;

  TextWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    String? textInitialValue,
    void Function(String)? textOnChanged,
    int? maxLinesInitialValue,
    void Function(int?)? maxLinesOnChanged,
    bool maxLinesOnChangedProvided = true,
    void Function(bool, int?)? maxLinesCheckboxOnChanged,
    bool maxLinesCheckboxOnChangedProvided = true,
    TextOverflow? overflowInitialValue,
    bool overflowInitialValueProvided = true,
    void Function(TextOverflow?)? overflowOnChanged,
    bool overflowOnChangedProvided = true,
    void Function(bool, TextOverflow?)? overflowCheckboxOnChanged,
    bool overflowCheckboxOnChangedProvided = true,
    TextAlign? alignmentInitialValue,
    bool alignmentInitialValueProvided = true,
    void Function(TextAlign?)? alignmentOnChanged,
    bool alignmentOnChangedProvided = true,
    void Function(bool, TextAlign?)? alignmentCheckboxOnChanged,
    bool alignmentCheckboxOnChangedProvided = true,
    TextStyle? styleInitialValue,
    bool styleInitialValueProvided = true,
    void Function(TextStyle?)? styleOnChanged,
    bool styleOnChangedProvided = true,
    void Function(bool, TextStyle?)? styleCheckboxOnChanged,
    bool styleCheckboxOnChangedProvided = true,
  }) {
    return TextWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      textInitialValue: textInitialValue ?? self.textInitialValue,
      textOnChanged: textOnChanged ?? self.textOnChanged,
      maxLinesInitialValue: maxLinesInitialValue ?? self.maxLinesInitialValue,
      maxLinesOnChanged:
          maxLinesOnChangedProvided
              ? (maxLinesOnChanged ?? self.maxLinesOnChanged)
              : null,
      maxLinesCheckboxOnChanged:
          maxLinesCheckboxOnChangedProvided
              ? (maxLinesCheckboxOnChanged ?? self.maxLinesCheckboxOnChanged)
              : null,
      overflowInitialValue:
          overflowInitialValueProvided
              ? (overflowInitialValue ?? self.overflowInitialValue)
              : null,
      overflowOnChanged:
          overflowOnChangedProvided
              ? (overflowOnChanged ?? self.overflowOnChanged)
              : null,
      overflowCheckboxOnChanged:
          overflowCheckboxOnChangedProvided
              ? (overflowCheckboxOnChanged ?? self.overflowCheckboxOnChanged)
              : null,
      alignmentInitialValue:
          alignmentInitialValueProvided
              ? (alignmentInitialValue ?? self.alignmentInitialValue)
              : null,
      alignmentOnChanged:
          alignmentOnChangedProvided
              ? (alignmentOnChanged ?? self.alignmentOnChanged)
              : null,
      alignmentCheckboxOnChanged:
          alignmentCheckboxOnChangedProvided
              ? (alignmentCheckboxOnChanged ?? self.alignmentCheckboxOnChanged)
              : null,
      styleInitialValue:
          styleInitialValueProvided
              ? (styleInitialValue ?? self.styleInitialValue)
              : null,
      styleOnChanged:
          styleOnChangedProvided
              ? (styleOnChanged ?? self.styleOnChanged)
              : null,
      styleCheckboxOnChanged:
          styleCheckboxOnChangedProvided
              ? (styleCheckboxOnChanged ?? self.styleCheckboxOnChanged)
              : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TextWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.textInitialValue == self.textInitialValue &&
        other.textOnChanged == self.textOnChanged &&
        other.maxLinesInitialValue == self.maxLinesInitialValue &&
        other.maxLinesOnChanged == self.maxLinesOnChanged &&
        other.maxLinesCheckboxOnChanged == self.maxLinesCheckboxOnChanged &&
        other.overflowInitialValue == self.overflowInitialValue &&
        other.overflowOnChanged == self.overflowOnChanged &&
        other.overflowCheckboxOnChanged == self.overflowCheckboxOnChanged &&
        other.alignmentInitialValue == self.alignmentInitialValue &&
        other.alignmentOnChanged == self.alignmentOnChanged &&
        other.alignmentCheckboxOnChanged == self.alignmentCheckboxOnChanged &&
        other.styleInitialValue == self.styleInitialValue &&
        other.styleOnChanged == self.styleOnChanged &&
        other.styleCheckboxOnChanged == self.styleCheckboxOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.textInitialValue,
      self.textOnChanged,
      self.maxLinesInitialValue,
      self.maxLinesOnChanged,
      self.maxLinesCheckboxOnChanged,
      self.overflowInitialValue,
      self.overflowOnChanged,
      self.overflowCheckboxOnChanged,
      self.alignmentInitialValue,
      self.alignmentOnChanged,
      self.alignmentCheckboxOnChanged,
      self.styleInitialValue,
      self.styleOnChanged,
      self.styleCheckboxOnChanged,
    );
  }

  @override
  String toString() =>
      'TextWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  textInitialValue: ${self.textInitialValue},\n'
      '  textOnChanged: ${self.textOnChanged},\n'
      '  maxLinesInitialValue: ${self.maxLinesInitialValue},\n'
      '  maxLinesOnChanged: ${self.maxLinesOnChanged},\n'
      '  maxLinesCheckboxOnChanged: ${self.maxLinesCheckboxOnChanged},\n'
      '  overflowInitialValue: ${self.overflowInitialValue},\n'
      '  overflowOnChanged: ${self.overflowOnChanged},\n'
      '  overflowCheckboxOnChanged: ${self.overflowCheckboxOnChanged},\n'
      '  alignmentInitialValue: ${self.alignmentInitialValue},\n'
      '  alignmentOnChanged: ${self.alignmentOnChanged},\n'
      '  alignmentCheckboxOnChanged: ${self.alignmentCheckboxOnChanged},\n'
      '  styleInitialValue: ${self.styleInitialValue},\n'
      '  styleOnChanged: ${self.styleOnChanged},\n'
      '  styleCheckboxOnChanged: ${self.styleCheckboxOnChanged},\n'
      ');';
}
