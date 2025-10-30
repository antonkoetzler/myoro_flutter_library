import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_button.dart';
part '../_widget/_myoro_button_state.dart';

/// Generic button of MFL.
///
/// Used when a very custom button is needed, otherwise MFL
/// provides other buttons that are built with [MyoroButton].
class MyoroButton extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroButtonStyle();

  /// Default value of [tooltipText].
  static const tooltipTextDefaultValue = kMyoroEmptyString;

  /// Default value of [isLoading].
  static const isLoadingDefaultValue = false;

  /// Default constructor.
  const MyoroButton({
    super.key,
    this.style = styleDefaultValue,
    this.cursor,
    this.tooltipText = tooltipTextDefaultValue,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
    required this.builder,
  });

  /// Theme extension.
  final MyoroButtonStyle style;

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

  /// [Widget] builder of the [MyoroButton].
  final MyoroButtonBuilder builder;

  /// Create state function.
  @override
  State<MyoroButton> createState() => _MyoroButtonState();
}
