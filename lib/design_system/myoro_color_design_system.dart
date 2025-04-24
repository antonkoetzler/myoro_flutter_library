// All available colors you may use in the applicaton.

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Principal colors. Default color scheme is a 2-color layout.
const _primaryDarkModeColor = Color(0xFF181818);
const _primaryLightModeColor = Color(0xFFEFEFEF);

final class MyoroColorDesignSystem {
  // TODO: Kill this function.
  static Color primary(BuildContext context) =>
      context.isDarkMode
          ? MyoroDarkModeColorDesignSystem.primary
          : MyoroLightModeColorDesignSystem.primary;

  // TODO: Kill this function.
  static Color secondary(BuildContext context) =>
      context.isDarkMode
          ? MyoroDarkModeColorDesignSystem.secondary
          : MyoroLightModeColorDesignSystem.secondary;
  static const Color success = Colors.green;
  static const Color error = Colors.red;
  static const Color onError = Colors.white;
  static const Color transparent = Colors.transparent;
  static const Color attention = Colors.cyan;
}

final class MyoroDarkModeColorDesignSystem {
  static const primary = _primaryDarkModeColor;
  static const secondary = _primaryLightModeColor;
}

final class MyoroLightModeColorDesignSystem {
  static const primary = _primaryLightModeColor;
  static const secondary = _primaryDarkModeColor;
}
