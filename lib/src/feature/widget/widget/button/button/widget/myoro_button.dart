import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_button.dart';

/// Generic button of MFL.
///
/// Used when a very custom button is needed, otherwise MFL
/// provides other buttons that are built with [MyoroButton].
class MyoroButton extends StatelessWidget {
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

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => MyoroButtonViewModel(tooltipText, onTapDown, onTapUp, isLoading),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroButtonViewModel>();
          final onEnter = viewModel.onEnter;
          final onExit = viewModel.onExit;
          final onTapCancel = viewModel.onTapCancel;
          final onTapDown = viewModel.onTapDown;
          final onTapUp = viewModel.onTapUp;
          final state = viewModel.state;
          final isLoadingController = state.isLoadingController;
          final onTapProvided = state.onTapProvided;
          final tapStatusController = state.tapStatusController;
          final effectiveCursor = cursor ?? (onTapProvided ? SystemMouseCursors.click : SystemMouseCursors.basic);

          return MouseRegion(
            cursor: effectiveCursor,
            onEnter: onEnter,
            onExit: onExit,
            child: ValueListenableBuilder(
              valueListenable: isLoadingController,
              builder: (_, isLoading, _) => isLoading
                  ? const MyoroCircularLoader()
                  : GestureDetector(
                      onTapDown: onTapDown,
                      onTapUp: onTapUp,
                      onTapCancel: onTapCancel,
                      child: ValueListenableBuilder(
                        valueListenable: tapStatusController,
                        builder: (_, tapStatusEnum, _) => _Button(tapStatusEnum, builder),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
