import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_button_widget_showcase_screen_state.dart';

/// View model of [MyoroButtonWidgetShowcaseScreen].
final class MyoroButtonWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroButtonWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroButtonWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroButtonConfiguration] of the [MyoroButton].
  MyoroButtonConfiguration buildConfiguration(BuildContext context) {
    void onTapDown(BuildContext context) {
      context.showSnackBar(
        snackBar: const MyoroSnackBar(
          configuration: MyoroSnackBarConfiguration(
            snackBarType: MyoroSnackBarTypeEnum.attention,
            message: 'Tap down activated.',
          ),
        ),
      );
    }

    void onTapUp(BuildContext context) {
      context.showSnackBar(
        snackBar: const MyoroSnackBar(
          configuration: MyoroSnackBarConfiguration(
            snackBarType: MyoroSnackBarTypeEnum.attention,
            message: 'Tap up activated.',
          ),
        ),
      );
    }

    return MyoroButtonConfiguration(
      tooltipConfiguration: state.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null,
      cursor: state.cursor,
      onTapDown: state.onTapDownEnabled ? (_) => onTapDown(context) : null,
      onTapUp: state.onTapUpEnabled ? (_) => onTapUp(context) : null,
    );
  }

  /// [MyoroButtonThemeExtension] of the [MyoroButton].
  MyoroButtonThemeExtension buildThemeExtension(BuildContext context) {
    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    final backgroundIdleColor = state.backgroundIdleColor ?? MyoroColors.transparent;
    final backgroundHoverColor = state.backgroundHoverColor ?? MyoroColors.transparent;
    final backgroundTapColor = state.backgroundTapColor ?? MyoroColors.transparent;
    final borderIdleColor = state.borderIdleColor ?? MyoroColors.transparent;
    final borderHoverColor = state.borderHoverColor ?? MyoroColors.transparent;
    final borderTapColor = state.borderTapColor ?? MyoroColors.transparent;

    return buttonThemeExtension.copyWith(
      borderRadius: state.borderRadius,
      backgroundIdleColor: backgroundIdleColor,
      backgroundHoverColor: backgroundHoverColor,
      backgroundTapColor: backgroundTapColor,
      borderWidth: kMyoroBorderWidth,
      borderIdleColor: borderIdleColor,
      borderHoverColor: borderHoverColor,
      borderTapColor: borderTapColor,
    );
  }
}
