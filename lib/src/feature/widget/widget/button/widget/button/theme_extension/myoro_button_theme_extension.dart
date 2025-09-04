import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends ThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin {
  const MyoroButtonThemeExtension({this.backgroundIdleColor, this.backgroundHoverColor, this.backgroundTapColor});

  // coverage:ignore-start
  MyoroButtonThemeExtension.fake()
    : backgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null;
  // coverage:ignore-end

  MyoroButtonThemeExtension.builder(MyoroButtonVariantThemeExtension buttonVariantThemeExtension)
    : backgroundIdleColor = buttonVariantThemeExtension.primaryBackgroundIdleColor,
      backgroundHoverColor = buttonVariantThemeExtension.primaryBackgroundHoverColor,
      backgroundTapColor = buttonVariantThemeExtension.primaryBackgroundTapColor;

  /// Background [Color] when the [MyoroTapStatusEnum] is [MyoroTapStatusEnum.idle].
  final Color? backgroundIdleColor;

  /// Background [Color] when the [MyoroTapStatusEnum] is [MyoroTapStatusEnum.hover].
  final Color? backgroundHoverColor;

  /// Background [Color] when the [MyoroTapStatusEnum] is [MyoroTapStatusEnum.tap].
  final Color? backgroundTapColor;

  @override
  MyoroButtonThemeExtension lerp(covariant ThemeExtension<MyoroButtonThemeExtension>? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;

    final backgroundIdleColor = Color.lerp(this.backgroundIdleColor, other.backgroundIdleColor, t);
    final backgroundHoverColor = Color.lerp(this.backgroundHoverColor, other.backgroundHoverColor, t);
    final backgroundTapColor = Color.lerp(this.backgroundTapColor, other.backgroundTapColor, t);

    return copyWith(
      backgroundIdleColor: backgroundIdleColor,
      backgroundIdleColorProvided: backgroundIdleColor != null,
      backgroundHoverColor: backgroundHoverColor,
      backgroundHoverColorProvided: backgroundHoverColor != null,
      backgroundTapColor: backgroundTapColor,
      backgroundTapColorProvided: backgroundTapColor != null,
    );
  }

  /// Background [Color] builder.
  Color? backgroundColorBuilder(MyoroTapStatusEnum tapStatus) {
    return switch (tapStatus) {
      MyoroTapStatusEnum.idle => backgroundIdleColor,
      MyoroTapStatusEnum.hover => backgroundHoverColor,
      MyoroTapStatusEnum.tap => backgroundTapColor,
    };
  }
}
