import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_item.g.dart';
part 'myoro_menu_button_item.dart';
part 'myoro_menu_icon_text_button_item.dart';

/// Model to build a menu item.
@immutable
sealed class MyoroMenuItem {
  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButton.isLoadingDefaultValue;

  /// Default constructor.
  const MyoroMenuItem({
    this.cursor,
    this.tooltipConfiguration,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
  });

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  final MouseCursor? cursor;

  /// [MyoroTooltip] of the [MyoroButton].
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// Function executed when the [MyoroButton] is tapped.
  final MyoroButtonOnTapDown? onTapDown;

  /// Function executed when the [MyoroButton] is released being tapped.
  final MyoroButtonOnTapUp? onTapUp;

  /// [bool] to determine if the button is loading.
  final bool isLoading;

  /// Copy with function.
  MyoroMenuItem copyWith({
    MouseCursor? cursor,
    bool cursorProvided = true,
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? isLoading,
  });
}
