import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_button_widget_showcase_screen_state.dart';

/// View model of [MyoroButtonWidgetShowcaseScreen].
final class MyoroButtonWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroButtonWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Callback executed when the [MyoroButton] is tapped down.
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

  /// Callback executed when the [MyoroButton] is tapped up.
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

  /// [_state] getter.
  MyoroButtonWidgetShowcaseScreenState get state {
    return _state;
  }

  /// [MyoroButtonStyle] of the [MyoroButton].
  MyoroButtonStyle get style {
    final backgroundIdleColor = state.backgroundIdleColor;
    final backgroundHoverColor = state.backgroundHoverColor;
    final backgroundTapColor = state.backgroundTapColor;
    final contentIdleColor = state.contentIdleColor;
    final contentHoverColor = state.contentHoverColor;
    final contentTapColor = state.contentTapColor;
    final borderWidth = state.borderWidth;
    final borderRadius = state.borderRadius;
    final borderIdleColor = state.borderIdleColor;
    final borderHoverColor = state.borderHoverColor;
    final borderTapColor = state.borderTapColor;

    return MyoroButtonStyle(
      backgroundIdleColor: backgroundIdleColor,
      backgroundHoverColor: backgroundHoverColor,
      backgroundTapColor: backgroundTapColor,
      contentIdleColor: contentIdleColor,
      contentHoverColor: contentHoverColor,
      contentTapColor: contentTapColor,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderIdleColor: borderIdleColor,
      borderHoverColor: borderHoverColor,
      borderTapColor: borderTapColor,
    );
  }
}
