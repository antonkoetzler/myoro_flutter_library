import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract [ThemeExtension] of a [MyoroButton] variant.
abstract class MyoroButtonStyleThemeExtension<T extends ThemeExtension<T>>
    extends ThemeExtension<T> {
  const MyoroButtonStyleThemeExtension({
    this.idleBackgroundColor,
    this.hoverBackgroundColor,
    this.tapBackgroundColor,
    this.idleContentColor,
    this.hoverContentColor,
    this.tapContentColor,
    this.idleBorderColor,
    this.hoverBorderColor,
    this.tapBorderColor,
    this.borderWidth,
  });

  /// Background color of [MyoroTapStatusEnum.idle].
  final Color? idleBackgroundColor;

  /// Background color of [MyoroTapStatusEnum.hover].
  final Color? hoverBackgroundColor;

  /// Background color of [MyoroTapStatusEnum.tap].
  final Color? tapBackgroundColor;

  /// Content color of [MyoroTapStatusEnum.idle].
  final Color? idleContentColor;

  /// Content color of [MyoroTapStatusEnum.hover].
  final Color? hoverContentColor;

  /// Content color of [MyoroTapStatusEnum.tap].
  final Color? tapContentColor;

  /// Border color of [MyoroTapStatusEnum.idle].
  final Color? idleBorderColor;

  /// Border color of [MyoroTapStatusEnum.hover].
  final Color? hoverBorderColor;

  /// Border color of [MyoroTapStatusEnum.tap].
  final Color? tapBorderColor;

  /// Width of the border.
  final double? borderWidth;
}
