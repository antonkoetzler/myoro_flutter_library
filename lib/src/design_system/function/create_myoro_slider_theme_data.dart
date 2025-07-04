// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to create the [SliderTheme] for [createMyoroThemeData]'s [SliderTheme].
SliderThemeData createMyoroSliderThemeData(ColorScheme colorScheme) {
  return SliderThemeData(
    activeTrackColor: colorScheme.onPrimary,
    inactiveTrackColor: colorScheme.onPrimary.withValues(alpha: 0.5),
    thumbColor: colorScheme.onPrimary,
    overlayColor: MyoroColors.transparent,
  );
}
