import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dialog_modal_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDialogModalWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroDialogModalWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroDialogModalWidgetShowcaseScreenThemeExtension>
    with _$MyoroDialogModalWidgetShowcaseScreenThemeExtensionMixin {
  /// [BorderRadius] of [_ChildWidget] [ClipRRect].
  final BorderRadius childWidgetBorderRadius;

  /// Size of [_ChildWidget]'s [Image].
  final double childWidgetSize;

  const MyoroDialogModalWidgetShowcaseScreenThemeExtension({
    required this.childWidgetBorderRadius,
    required this.childWidgetSize,
  });

  // coverage:ignore-start
  MyoroDialogModalWidgetShowcaseScreenThemeExtension.fake()
    : childWidgetBorderRadius = myoroFake<BorderRadius>(),
      childWidgetSize = faker.randomGenerator.decimal(scale: 100, min: 20);
  // coverage:ignore-end

  MyoroDialogModalWidgetShowcaseScreenThemeExtension.builder()
    : childWidgetBorderRadius = BorderRadius.circular(kMyoroBorderRadius),
      childWidgetSize = 100;

  @override
  MyoroDialogModalWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroDialogModalWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDialogModalWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      childWidgetBorderRadius: BorderRadius.lerp(childWidgetBorderRadius, other.childWidgetBorderRadius, t),
      childWidgetSize: lerpDouble(childWidgetSize, other.childWidgetSize, t),
    );
  }
}
