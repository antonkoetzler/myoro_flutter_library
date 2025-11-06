import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_variant.g.dart';
part 'myoro_button_button_variant.dart';
part 'myoro_button_icon_text_button_variant.dart';

/// Model to build a menu item.
@immutable
sealed class MyoroButtonVariant {
  /// Default value of [tooltipText].
  static const tooltipTextDefaultValue = kMyoroEmptyString;

  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButton.isLoadingDefaultValue;

  /// Default constructor.
  const MyoroButtonVariant({
    this.cursor,
    this.tooltipText = tooltipTextDefaultValue,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
  });

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  final MouseCursor? cursor;

  /// [MyoroTooltip] of the [MyoroButton].
  final String tooltipText;

  /// Function executed when the [MyoroButton] is tapped.
  final MyoroButtonOnTapDown? onTapDown;

  /// Function executed when the [MyoroButton] is released being tapped.
  final MyoroButtonOnTapUp? onTapUp;

  /// [bool] to determine if the button is loading.
  final bool isLoading;

  /// Copy with function.
  MyoroButtonVariant copyWith({
    MouseCursor? cursor,
    bool cursorProvided = true,
    String? tooltipText,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  });
}
