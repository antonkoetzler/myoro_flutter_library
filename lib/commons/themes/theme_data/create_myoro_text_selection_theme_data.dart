import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [TextSelectionThemeData] in [createMyoroThemeData].
TextSelectionThemeData createMyoroTextSelectionThemeData(ColorScheme colorScheme) {
  final translucentOnPrimary = colorScheme.onPrimary.withOpacity(0.3);

  return TextSelectionThemeData(
    cursorColor: colorScheme.onPrimary,
    selectionColor: translucentOnPrimary,
    selectionHandleColor: translucentOnPrimary,
  );
}
