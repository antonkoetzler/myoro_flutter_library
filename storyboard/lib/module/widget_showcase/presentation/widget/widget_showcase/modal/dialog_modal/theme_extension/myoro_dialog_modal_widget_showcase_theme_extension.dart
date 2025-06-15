import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dialog_modal_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDialogModalWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroDialogModalWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>
    with _$MyoroDialogModalWidgetShowcaseThemeExtensionMixin {
  /// [BorderRadius] of [_ChildWidget] [ClipRRect].
  final BorderRadius childWidgetBorderRadius;

  /// Size of [_ChildWidget]'s [Image].
  final double childWidgetSize;

  const MyoroDialogModalWidgetShowcaseThemeExtension({
    required this.childWidgetBorderRadius,
    required this.childWidgetSize,
  });

  MyoroDialogModalWidgetShowcaseThemeExtension.fake()
    : childWidgetBorderRadius = myoroFake<BorderRadius>(),
      childWidgetSize = faker.randomGenerator.decimal(scale: 100, min: 20);

  MyoroDialogModalWidgetShowcaseThemeExtension.builder()
    : childWidgetBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      childWidgetSize = 100;

  @override
  MyoroDialogModalWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDialogModalWidgetShowcaseThemeExtension) return this;
    return copyWith(
      childWidgetBorderRadius: BorderRadius.lerp(childWidgetBorderRadius, other.childWidgetBorderRadius, t),
      childWidgetSize: lerpDouble(childWidgetSize, other.childWidgetSize, t),
    );
  }
}
