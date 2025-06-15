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
}
