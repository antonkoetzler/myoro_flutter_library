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
    void Function(String)? textOnChanged,
    void Function(int?)? maxLinesOnChanged,
    bool maxLinesOnChangedProvided = true,
    void Function(TextOverflow?)? overflowOnChanged,
    bool overflowOnChangedProvided = true,
    void Function(TextAlign?)? alignmentOnChanged,
    bool alignmentOnChangedProvided = true,
    void Function(TextStyle?)? styleOnChanged,
    bool styleOnChangedProvided = true,
  }) {
    return TextWidgetShowcaseOptionConfiguration(
      label: label ?? self.label,
      textOnChanged: textOnChanged ?? self.textOnChanged,
      maxLinesOnChanged:
          maxLinesOnChangedProvided
              ? (maxLinesOnChanged ?? self.maxLinesOnChanged)
              : null,
      overflowOnChanged:
          overflowOnChangedProvided
              ? (overflowOnChanged ?? self.overflowOnChanged)
              : null,
      alignmentOnChanged:
          alignmentOnChangedProvided
              ? (alignmentOnChanged ?? self.alignmentOnChanged)
              : null,
      styleOnChanged:
          styleOnChangedProvided
              ? (styleOnChanged ?? self.styleOnChanged)
              : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TextWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.textOnChanged == self.textOnChanged &&
        other.maxLinesOnChanged == self.maxLinesOnChanged &&
        other.overflowOnChanged == self.overflowOnChanged &&
        other.alignmentOnChanged == self.alignmentOnChanged &&
        other.styleOnChanged == self.styleOnChanged;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.label,
      self.textOnChanged,
      self.maxLinesOnChanged,
      self.overflowOnChanged,
      self.alignmentOnChanged,
      self.styleOnChanged,
    );
  }

  @override
  String toString() =>
      'TextWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  textOnChanged: ${self.textOnChanged},\n'
      '  maxLinesOnChanged: ${self.maxLinesOnChanged},\n'
      '  overflowOnChanged: ${self.overflowOnChanged},\n'
      '  alignmentOnChanged: ${self.alignmentOnChanged},\n'
      '  styleOnChanged: ${self.styleOnChanged},\n'
      ');';
}
