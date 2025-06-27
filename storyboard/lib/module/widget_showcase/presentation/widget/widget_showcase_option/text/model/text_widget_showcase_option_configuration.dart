import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'text_widget_showcase_option_configuration.g.dart';

/// Configuration model of [TextWidgetShowcaseOption].
@immutable
@myoroModel
final class TextWidgetShowcaseOptionConfiguration with _$TextWidgetShowcaseOptionConfigurationMixin {
  static const labelDefaultValue = 'Text';
  static const textInitialValueDefaultValue = '';
  static const maxLinesInitialValueDefaultValue = TextMaxLinesWidgetShowcaseOption.initiallySelectedItemDefaultValue;

  const TextWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    this.textInitialValue = textInitialValueDefaultValue,
    required this.textOnChanged,
    this.maxLinesInitialValue = maxLinesInitialValueDefaultValue,
    this.maxLinesOnChanged,
    this.maxLinesCheckboxOnChanged,
    this.overflowInitialValue,
    this.overflowOnChanged,
    this.overflowCheckboxOnChanged,
    this.alignmentInitialValue,
    this.alignmentOnChanged,
    this.alignmentCheckboxOnChanged,
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
  final TextWidgetShowcaseOptionMaxLinesCheckboxOnChanged? maxLinesCheckboxOnChanged;

  /// [Text.overflow]
  final TextOverflow? overflowInitialValue;
  final TextWidgetShowcaseOptionOverflowOnChanged? overflowOnChanged;
  final TextWidgetShowcaseOptionOverflowCheckboxOnChanged? overflowCheckboxOnChanged;

  /// [Text.textAlign]
  final TextAlign? alignmentInitialValue;
  final TextWidgetShowcaseOptionAlignmentOnChanged? alignmentOnChanged;
  final TextWidgetShowcaseOptionAlignmentCheckboxOnChanged? alignmentCheckboxOnChanged;

  /// [Text.style]
  final TextStyle? styleInitialValue;
  final TextWidgetShowcaseOptionTextStyleOnChanged? styleOnChanged;
  final TextWidgetShowcaseOptionTextStyleCheckboxOnChanged? styleCheckboxOnChanged;
}
