// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to setup the theming for [Tooltip].
TooltipThemeData createMyoroTooltipThemeData(ColorScheme colorScheme, TextTheme textTheme) {
  return TooltipThemeData(
    decoration: BoxDecoration(
      color: colorScheme.primary,
      borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      border: Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
    ),
    textStyle: textTheme.bodySmall,
    padding: const EdgeInsets.all(10),
  );
}
