import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends MyoroButtonVariantThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin {
  const MyoroButtonThemeExtension({
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

  factory MyoroButtonThemeExtension.fromVariant(MyoroButtonVariantThemeExtension themeExtension) {
    return MyoroButtonThemeExtension(
      backgroundColor: themeExtension.backgroundColor,
      backgroundIdleColor: themeExtension.backgroundIdleColor,
      backgroundHoverColor: themeExtension.backgroundHoverColor,
      backgroundTapColor: themeExtension.backgroundTapColor,
      contentColor: themeExtension.contentColor,
      contentIdleColor: themeExtension.contentIdleColor,
      contentHoverColor: themeExtension.contentHoverColor,
      contentTapColor: themeExtension.contentTapColor,
      borderWidth: themeExtension.borderWidth,
      borderRadius: themeExtension.borderRadius,
      borderColor: themeExtension.borderColor,
      borderIdleColor: themeExtension.borderIdleColor,
      borderHoverColor: themeExtension.borderHoverColor,
      borderTapColor: themeExtension.borderTapColor,
    );
  }

  factory MyoroButtonThemeExtension.fromIconTextButtonThemeExtension(
    MyoroIconTextButtonThemeExtension themeExtension,
  ) {
    return MyoroButtonThemeExtension(
      backgroundColor: themeExtension.backgroundColor,
      backgroundIdleColor: themeExtension.backgroundIdleColor,
      backgroundHoverColor: themeExtension.backgroundHoverColor,
      backgroundTapColor: themeExtension.backgroundTapColor,
      contentColor: themeExtension.contentColor,
      contentIdleColor: themeExtension.contentIdleColor,
      contentHoverColor: themeExtension.contentHoverColor,
      contentTapColor: themeExtension.contentTapColor,
      borderWidth: themeExtension.borderWidth,
      borderRadius: themeExtension.borderRadius,
      borderColor: themeExtension.borderColor,
      borderIdleColor: themeExtension.borderIdleColor,
      borderHoverColor: themeExtension.borderHoverColor,
      borderTapColor: themeExtension.borderTapColor,
    );
  }
}
