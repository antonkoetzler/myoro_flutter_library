import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_primary_variant_theme_extension.g.dart';

/// Primary button variant.
@immutable
@myoroThemeExtension
class MyoroButtonPrimaryVariantThemeExtension
    extends MyoroButtonVariantThemeExtension<MyoroButtonPrimaryVariantThemeExtension>
    with _$MyoroButtonPrimaryVariantThemeExtensionMixin {
  const MyoroButtonPrimaryVariantThemeExtension({
    super.backgroundColor,
    super.backgroundIdleColor,
    super.backgroundHoverColor,
    super.backgroundTapColor,
    super.contentColor,
    super.contentIdleColor,
    super.contentHoverColor,
    super.contentTapColor,
    super.borderWidth,
    super.borderRadius,
    super.borderColor,
    super.borderIdleColor,
    super.borderHoverColor,
    super.borderTapColor,
  });

  factory MyoroButtonPrimaryVariantThemeExtension.builder(
    bool isDarkMode,
    ColorScheme colorScheme,
  ) {
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
      contentColor: primary,
      borderRadius: BorderRadius.circular(kMyoroBorderRadius),
    );
  }
}
