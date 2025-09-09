import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_secondary_variant_theme_extension.g.dart';

/// Secondary button variant.
@immutable
@myoroThemeExtension
class MyoroButtonSecondaryVariantThemeExtension
    extends MyoroButtonVariantThemeExtension<MyoroButtonSecondaryVariantThemeExtension>
    with _$MyoroButtonSecondaryVariantThemeExtensionMixin {
  const MyoroButtonSecondaryVariantThemeExtension({
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

  factory MyoroButtonSecondaryVariantThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const secondaryBackgroundHoverColorFactor = 0.7;
    const secondaryBackgroundTapColorFactor = 0.5;

    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    return MyoroButtonSecondaryVariantThemeExtension(
      backgroundIdleColor: primary,
      backgroundHoverColor: isDarkMode
          ? onPrimary.darken(secondaryBackgroundHoverColorFactor)
          : onPrimary.brighten(secondaryBackgroundHoverColorFactor),
      backgroundTapColor: isDarkMode
          ? onPrimary.darken(secondaryBackgroundTapColorFactor)
          : onPrimary.brighten(secondaryBackgroundTapColorFactor),
      contentColor: onPrimary,
      borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      borderWidth: kMyoroBorderWidth,
      borderColor: onPrimary,
    );
  }
}
