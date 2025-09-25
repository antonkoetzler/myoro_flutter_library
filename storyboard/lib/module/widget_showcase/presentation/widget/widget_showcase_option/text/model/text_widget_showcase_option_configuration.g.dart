// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [TextWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class TextWidgetShowcaseOptionConfiguration with _$TextWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin _$TextWidgetShowcaseOptionConfigurationMixin {
  TextWidgetShowcaseOptionConfiguration get self => this as TextWidgetShowcaseOptionConfiguration;

  TextWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    String? textInitialValue,
    MyoroInputOnChanged? textOnChanged,
    int? maxLinesInitialValue,
    TextWidgetShowcaseOptionMaxLinesOnChanged? maxLinesOnChanged,
    bool maxLinesOnChangedProvided = true,
    TextOverflow? overflowInitialValue,
    TextWidgetShowcaseOptionOverflowOnChanged? overflowOnChanged,
    bool overflowOnChangedProvided = true,
    TextAlign? alignmentInitialValue,
    TextWidgetShowcaseOptionAlignmentOnChanged? alignmentOnChanged,
    bool alignmentOnChangedProvided = true,
    TextStyle? styleInitialValue,
    bool styleInitialValueProvided = true,
    TextWidgetShowcaseOptionTextStyleOnChanged? styleOnChanged,
    bool styleOnChangedProvided = true,
  }) {
    return TextWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      textInitialValue: textInitialValue ?? self.textInitialValue,
      textOnChanged: textOnChanged ?? self.textOnChanged,
      maxLinesInitialValue: maxLinesInitialValue ?? self.maxLinesInitialValue,
      maxLinesOnChanged: maxLinesOnChangedProvided ? (maxLinesOnChanged ?? self.maxLinesOnChanged) : null,
      overflowInitialValue: overflowInitialValue ?? self.overflowInitialValue,
      overflowOnChanged: overflowOnChangedProvided ? (overflowOnChanged ?? self.overflowOnChanged) : null,
      alignmentInitialValue: alignmentInitialValue ?? self.alignmentInitialValue,
      alignmentOnChanged: alignmentOnChangedProvided ? (alignmentOnChanged ?? self.alignmentOnChanged) : null,
      styleInitialValue: styleInitialValueProvided ? (styleInitialValue ?? self.styleInitialValue) : null,
      styleOnChanged: styleOnChangedProvided ? (styleOnChanged ?? self.styleOnChanged) : null,
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
        other.overflowInitialValue == self.overflowInitialValue &&
        other.overflowOnChanged == self.overflowOnChanged &&
        other.alignmentInitialValue == self.alignmentInitialValue &&
        other.alignmentOnChanged == self.alignmentOnChanged &&
        other.styleInitialValue == self.styleInitialValue &&
        other.styleOnChanged == self.styleOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.textInitialValue,
      self.textOnChanged,
      self.maxLinesInitialValue,
      self.maxLinesOnChanged,
      self.overflowInitialValue,
      self.overflowOnChanged,
      self.alignmentInitialValue,
      self.alignmentOnChanged,
      self.styleInitialValue,
      self.styleOnChanged,
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
      '  overflowInitialValue: ${self.overflowInitialValue},\n'
      '  overflowOnChanged: ${self.overflowOnChanged},\n'
      '  alignmentInitialValue: ${self.alignmentInitialValue},\n'
      '  alignmentOnChanged: ${self.alignmentOnChanged},\n'
      '  styleInitialValue: ${self.styleInitialValue},\n'
      '  styleOnChanged: ${self.styleOnChanged},\n'
      ');';
}
