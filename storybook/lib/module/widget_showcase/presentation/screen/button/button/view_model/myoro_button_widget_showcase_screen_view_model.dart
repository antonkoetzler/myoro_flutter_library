import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

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
      isLoading: state.isLoading,
    );
  }

  /// [MyoroButtonStyle] of the [MyoroButton].
  MyoroButtonStyle buildStyle(BuildContext context) {
    return const MyoroButtonStyle().copyWith(
      backgroundIdleColor: state.backgroundIdleColor,
      backgroundHoverColor: state.backgroundHoverColor,
      backgroundTapColor: state.backgroundTapColor,
      contentIdleColor: state.contentIdleColor,
      contentHoverColor: state.contentHoverColor,
      contentTapColor: state.contentTapColor,
      borderWidth: state.borderWidth,
      borderRadius: state.borderRadius,
      borderIdleColor: state.borderIdleColor,
      borderHoverColor: state.borderHoverColor,
      borderTapColor: state.borderTapColor,
    );
  }
}
