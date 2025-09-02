import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends MyoroButtonStyleThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin {
  const MyoroButtonThemeExtension({
    super.idleBackgroundColor,
    super.hoverBackgroundColor,
    super.tapBackgroundColor,
    super.idleBorderColor,
    super.hoverBorderColor,
    super.tapBorderColor,
    super.borderWidth,
    this.borderRadius,
    this.cursor,
  });

  // coverage:ignore-start
  MyoroButtonThemeExtension.fake()
    : borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      cursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null;
  // coverage:ignore-end

  MyoroButtonThemeExtension.builder()
    : cursor = null,
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusWidth);

  /// Border radius.
  final BorderRadius? borderRadius;

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  ///
  /// If [MyoroButtonConfiguration.onTapDown] or [MyoroButtonConfiguration.onTapUp] is provided,
  /// [cursor] defaults to [SystemMouseCursors.click]. Other, the default is [SystemMouseCursors.basic].
  final MouseCursor? cursor;

  @override
  MyoroButtonThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroButtonThemeExtension) return this;

    final idleBackgroundColor = Color.lerp(this.idleBackgroundColor, other.idleBackgroundColor, t);
    final hoverBackgroundColor = Color.lerp(
      this.hoverBackgroundColor,
      other.hoverBackgroundColor,
      t,
    );
    final tapBackgroundColor = Color.lerp(this.tapBackgroundColor, other.tapBackgroundColor, t);
    final idleContentColor = Color.lerp(this.idleContentColor, other.idleContentColor, t);
    final hoverContentColor = Color.lerp(this.hoverContentColor, other.hoverContentColor, t);
    final tapContentColor = Color.lerp(this.tapContentColor, other.tapContentColor, t);
    final idleBorderColor = Color.lerp(this.idleBorderColor, other.idleBorderColor, t);
    final hoverBorderColor = Color.lerp(this.hoverBorderColor, other.hoverBorderColor, t);
    final tapBorderColor = Color.lerp(this.tapBorderColor, other.tapBorderColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final cursor = myoroLerp(this.cursor, other.cursor, t);

    return copyWith(
      idleBackgroundColor: idleBackgroundColor,
      idleBackgroundColorProvided: idleBackgroundColor != null,
      hoverBackgroundColor: hoverBackgroundColor,
      hoverBackgroundColorProvided: hoverBackgroundColor != null,
      tapBackgroundColor: tapBackgroundColor,
      tapBackgroundColorProvided: tapBackgroundColor != null,
      idleContentColor: idleContentColor,
      idleContentColorProvided: idleContentColor != null,
      hoverContentColor: hoverContentColor,
      hoverContentColorProvided: hoverContentColor != null,
      tapContentColor: tapContentColor,
      tapContentColorProvided: tapContentColor != null,
      idleBorderColor: idleBorderColor,
      idleBorderColorProvided: idleBorderColor != null,
      hoverBorderColor: hoverBorderColor,
      hoverBorderColorProvided: hoverBorderColor != null,
      tapBorderColor: tapBorderColor,
      tapBorderColorProvided: tapBorderColor != null,
      borderWidth: borderWidth,
      borderWidthProvided: borderWidth != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
      cursor: cursor,
      cursorProvided: cursor != null,
    );
  }
}
