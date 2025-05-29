import 'package:flutter/material.dart';

/// [Text.maxLines] on-changed.
typedef TextWidgetShowcaseOptionMaxLinesOnChanged = void Function(int? maxLines);

/// [Text.overflow] on-changed.
typedef TextWidgetShowcaseOptionOverflowOnChanged = void Function(TextOverflow? overflow);

/// [Text.textAlign] on-changed.
typedef TextWidgetShowcaseOptionAlignmentOnChanged = void Function(TextAlign? alignment);

/// [Text.style] on-changed.
typedef TextWidgetShowcaseOptionTextStyleOnChanged = void Function(TextStyle? textStyle);
