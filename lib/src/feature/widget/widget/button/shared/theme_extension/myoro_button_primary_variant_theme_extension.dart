import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Primary button variant.
class MyoroButtonPrimaryVariantThemeExtension
    extends MyoroButtonVariantThemeExtension<MyoroButtonPrimaryVariantThemeExtension> {
  const MyoroButtonPrimaryVariantThemeExtension({
    super.backgroundIdleColor,
    super.backgroundHoverColor,
    super.backgroundTapColor,
    super.contentIdleColor,
    super.contentHoverColor,
    super.contentTapColor,
    super.borderWidth,
    super.borderRadius,
    super.borderIdleColor,
    super.borderHoverColor,
    super.borderTapColor,
  });

  factory MyoroButtonPrimaryVariantThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const backgroundHoverColorFactor = 0.15;
    const backgroundTapColorFactor = 0.2;

    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    return MyoroButtonPrimaryVariantThemeExtension(
      backgroundIdleColor: onPrimary,
      backgroundHoverColor: isDarkMode
          ? onPrimary.darken(backgroundHoverColorFactor)
          : onPrimary.brighten(backgroundHoverColorFactor),
      backgroundTapColor: isDarkMode
          ? onPrimary.darken(backgroundTapColorFactor)
          : onPrimary.brighten(backgroundTapColorFactor),
      contentIdleColor: primary,
      contentHoverColor: primary,
      contentTapColor: primary,
      borderRadius: BorderRadius.circular(kMyoroBorderRadius),
    );
  }
}
