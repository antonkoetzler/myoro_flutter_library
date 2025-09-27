import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to setup the theming for [Tooltip].
TooltipThemeData createMyoroTooltipThemeData(ColorScheme colorScheme, TextTheme textTheme) {
  return TooltipThemeData(
    decoration: BoxDecoration(
      color: colorScheme.primary,
      borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      border: Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
    ),
    textStyle: textTheme.bodySmall,
    padding: EdgeInsets.all(kMyoroMultiplier * 2.5),
  );
}
