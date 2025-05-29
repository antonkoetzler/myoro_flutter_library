import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [TextWidgetShowcaseOption].
final class TextWidgetShowcaseOptionConfiguration extends Equatable {
  static const labelDefaultValue = 'Text';

  const TextWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    required this.textOnChanged,
    this.maxLinesOnChanged,
    this.overflowOnChanged,
    this.alignmentOnChanged,
    this.styleOnChanged,
  });

  /// Label of the [TextWidgetShowcaseOption].
  final String label;

  /// [Text.data] on-changed.
  final MyoroInputOnChanged textOnChanged;

  /// [Text.maxLines] on-changed.
  final TextWidgetShowcaseOptionMaxLinesOnChanged? maxLinesOnChanged;

  /// [Text.overflow] on-changed.
  final TextWidgetShowcaseOptionOverflowOnChanged? overflowOnChanged;

  /// [Text.textAlign] on-changed.
  final TextWidgetShowcaseOptionAlignmentOnChanged? alignmentOnChanged;

  /// [Text.style] on-changed.
  final TextWidgetShowcaseOptionTextStyleOnChanged? styleOnChanged;

  TextWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    MyoroInputOnChanged? textOnChanged,
    TextWidgetShowcaseOptionMaxLinesOnChanged? maxLinesOnChanged,
    bool maxLinesOnChangedProvided = true,
    TextWidgetShowcaseOptionOverflowOnChanged? overflowOnChanged,
    bool overflowOnChangedProvided = true,
    TextWidgetShowcaseOptionAlignmentOnChanged? alignmentOnChanged,
    bool alignmentOnChangedProvided = true,
    TextWidgetShowcaseOptionTextStyleOnChanged? styleOnChanged,
    bool styleOnChangedProvided = true,
  }) {
    return TextWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      textOnChanged: textOnChanged ?? this.textOnChanged,
      maxLinesOnChanged: maxLinesOnChangedProvided ? (maxLinesOnChanged ?? this.maxLinesOnChanged) : null,
      overflowOnChanged: overflowOnChangedProvided ? (overflowOnChanged ?? this.overflowOnChanged) : null,
      alignmentOnChanged: alignmentOnChangedProvided ? (alignmentOnChanged ?? this.alignmentOnChanged) : null,
      styleOnChanged: styleOnChangedProvided ? (styleOnChanged ?? this.styleOnChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [label, textOnChanged, maxLinesOnChanged, overflowOnChanged, alignmentOnChanged, styleOnChanged];
  }

  @override
  String toString() =>
      'TextWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  textOnChanged: $textOnChanged,\n'
      '  maxLinesOnChanged: $maxLinesOnChanged,\n'
      '  overflowOnChanged: $overflowOnChanged,\n'
      '  alignmentOnChanged: $alignmentOnChanged,\n'
      '  styleOnChanged: $styleOnChanged,\n'
      ');';
}
