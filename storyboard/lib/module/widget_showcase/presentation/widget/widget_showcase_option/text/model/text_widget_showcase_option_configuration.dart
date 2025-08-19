import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'text_widget_showcase_option_configuration.g.dart';

/// Configuration model of [TextWidgetShowcaseOption].
@immutable
@myoroModel
final class TextWidgetShowcaseOptionConfiguration
    with _$TextWidgetShowcaseOptionConfigurationMixin {
  static const labelDefaultValue = 'Text';
  static const textInitialValueDefaultValue = '';
  static const maxLinesInitialValueDefaultValue = MyoroTextConfiguration.maxLinesDefaultValue;
  static const overflowInitialValueDefaultValue = MyoroTextConfiguration.overflowDefaultValue;
  static const alignmentInitialValueDefaultValue = MyoroTextConfiguration.alignmentDefaultValue;

  const TextWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    this.textInitialValue = textInitialValueDefaultValue,
    required this.textOnChanged,
    this.maxLinesInitialValue = maxLinesInitialValueDefaultValue,
    this.maxLinesOnChanged,
    this.overflowInitialValue = overflowInitialValueDefaultValue,
    this.overflowOnChanged,
    this.alignmentInitialValue = alignmentInitialValueDefaultValue,
    this.alignmentOnChanged,
    this.styleInitialValue,
    this.styleOnChanged,
    this.styleCheckboxOnChanged,
  });

  /// Label of the [TextWidgetShowcaseOption].
  final String label;

  /// [Text.data]
  final String textInitialValue;
  final MyoroInputOnChanged textOnChanged;

  /// [Text.maxLines]
  final int maxLinesInitialValue;
  final TextWidgetShowcaseOptionMaxLinesOnChanged? maxLinesOnChanged;

  /// [Text.overflow]
  final TextOverflow overflowInitialValue;
  final TextWidgetShowcaseOptionOverflowOnChanged? overflowOnChanged;

  /// [Text.textAlign]
  final TextAlign alignmentInitialValue;
  final TextWidgetShowcaseOptionAlignmentOnChanged? alignmentOnChanged;

  /// [Text.style]
  final TextStyle? styleInitialValue;
  final TextWidgetShowcaseOptionTextStyleOnChanged? styleOnChanged;
  final TextWidgetShowcaseOptionTextStyleCheckboxOnChanged? styleCheckboxOnChanged;

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
    TextWidgetShowcaseOptionTextStyleCheckboxOnChanged? styleCheckboxOnChanged,
    bool styleCheckboxOnChangedProvided = true,
  }) {
    return TextWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      textInitialValue: textInitialValue ?? this.textInitialValue,
      textOnChanged: textOnChanged ?? this.textOnChanged,
      maxLinesInitialValue: maxLinesInitialValue ?? this.maxLinesInitialValue,
      maxLinesOnChanged:
          maxLinesOnChangedProvided ? (maxLinesOnChanged ?? this.maxLinesOnChanged) : null,
      overflowInitialValue: overflowInitialValue ?? this.overflowInitialValue,
      overflowOnChanged:
          overflowOnChangedProvided ? (overflowOnChanged ?? this.overflowOnChanged) : null,
      alignmentInitialValue: alignmentInitialValue ?? this.alignmentInitialValue,
      alignmentOnChanged:
          alignmentOnChangedProvided ? (alignmentOnChanged ?? this.alignmentOnChanged) : null,
      styleInitialValue:
          styleInitialValueProvided ? (styleInitialValue ?? this.styleInitialValue) : null,
      styleOnChanged: styleOnChangedProvided ? (styleOnChanged ?? this.styleOnChanged) : null,
      styleCheckboxOnChanged:
          styleCheckboxOnChangedProvided
              ? (styleCheckboxOnChanged ?? this.styleCheckboxOnChanged)
              : null,
    );
  }
}
