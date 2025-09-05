import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroButton].
class MyoroButtonThemeExtension extends MyoroButtonVariantThemeExtension<MyoroButtonThemeExtension> {
  const MyoroButtonThemeExtension({
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
}
