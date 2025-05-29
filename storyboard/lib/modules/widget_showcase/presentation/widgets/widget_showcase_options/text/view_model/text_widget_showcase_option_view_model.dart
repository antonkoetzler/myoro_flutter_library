import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [TextWidgetShowcaseOption].
final class TextWidgetShowcaseOptionViewModel {
  static const textDefaultValue = '';

  TextWidgetShowcaseOptionViewModel(this.configuration);

  /// Configuration.
  final TextWidgetShowcaseOptionConfiguration configuration;

  /// [Text.data]
  String text = textDefaultValue;

  /// [Text.maxLines]
  int? maxLines;

  /// [Text.overflow]
  TextOverflow? overflow;

  /// [Text.textAlign]
  TextAlign? textAlign;

  /// [Text.style]
  TextStyle? style;
}
