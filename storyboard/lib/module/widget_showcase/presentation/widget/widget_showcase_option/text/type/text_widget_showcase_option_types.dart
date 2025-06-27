import 'package:flutter/material.dart';

/// [Text.maxLines] on-changed.
typedef TextWidgetShowcaseOptionMaxLinesOnChanged = void Function(int? maxLines);
typedef TextWidgetShowcaseOptionMaxLinesCheckboxOnChanged = void Function(bool enabled, int? maxLines);

/// [Text.overflow] on-changed.
typedef TextWidgetShowcaseOptionOverflowOnChanged = void Function(TextOverflow? overflow);
typedef TextWidgetShowcaseOptionOverflowCheckboxOnChanged = void Function(bool enabled, TextOverflow? overflow);

/// [Text.textAlign] on-changed.
typedef TextWidgetShowcaseOptionAlignmentOnChanged = void Function(TextAlign? alignment);
typedef TextWidgetShowcaseOptionAlignmentCheckboxOnChanged = void Function(bool enabled, TextAlign? alignment);

/// [Text.style] on-changed.
typedef TextWidgetShowcaseOptionTextStyleOnChanged = void Function(TextStyle? textStyle);
typedef TextWidgetShowcaseOptionTextStyleCheckboxOnChanged = void Function(bool enabled, TextStyle? textStyle);
