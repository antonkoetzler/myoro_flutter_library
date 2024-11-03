// All available colors you may use in the applicaton.

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Principal colors. Default color scheme is a 2-color layout.
const _primaryDarkModeColor = Color(0xFF181818);
const _primaryLightModeColor = Color(0xFFEDE6D6);

final class ColorDesignSystem {
  static Color primary(BuildContext context) => context.isDarkMode ? DarkModeColorDesignSystem.primary : LightModeColorDesignSystem.primary;
  static Color secondary(BuildContext context) => context.isDarkMode ? DarkModeColorDesignSystem.secondary : LightModeColorDesignSystem.secondary;
  static Color error = Colors.red;
  static Color onError = Colors.white;
  static Color transparent = Colors.transparent;
}

final class DarkModeColorDesignSystem {
  static const primary = _primaryDarkModeColor;
  static const secondary = _primaryLightModeColor;
}

final class LightModeColorDesignSystem {
  static const primary = _primaryLightModeColor;
  static const secondary = _primaryDarkModeColor;
}
