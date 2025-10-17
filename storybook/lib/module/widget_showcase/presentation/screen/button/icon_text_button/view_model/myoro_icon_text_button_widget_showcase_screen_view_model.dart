import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroIconTextButtonWidgetShowcaseScreen].
final class MyoroIconTextButtonWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroIconTextButtonWidgetShowcaseScreenState();
  MyoroIconTextButtonWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroIconTextButtonConfiguration] of the [MyoroIconTextButton].
  MyoroIconTextButtonConfiguration buildConfiguration(BuildContext context) {
    final buttonViewModel = _state.buttonViewModel;
    final buttonConfiguration = buttonViewModel.buildConfiguration(context);

    return MyoroIconTextButtonConfiguration(
      tooltipConfiguration: buttonConfiguration.tooltipConfiguration,
      cursor: buttonConfiguration.cursor,
      onTapDown: buttonConfiguration.onTapDown,
      onTapUp: buttonConfiguration.onTapUp,
      isLoading: buttonConfiguration.isLoading,
      invert: _state.invert,
      iconConfiguration: _state.icon != null ? MyoroIconConfiguration(icon: _state.icon!, size: _state.iconSize) : null,
      textConfiguration: _state.text.isNotEmpty
          ? MyoroTextConfiguration(
              text: _state.text,
              maxLines: _state.maxLines,
              overflow: _state.overflow,
              alignment: _state.alignment,
              style: _state.style,
            )
          : null,
    );
  }

  /// [MyoroIconTextButtonStyle] builder.
  MyoroIconTextButtonStyle buildStyle(BuildContext context) {
    final buttonViewModel = _state.buttonViewModel;
    final buildButtonStyle = buttonViewModel.buildStyle;
    final buttonStyle = buildButtonStyle(context);
    return const MyoroIconTextButtonStyle().copyWith(
      backgroundIdleColor: buttonStyle.backgroundIdleColor,
      backgroundHoverColor: buttonStyle.backgroundHoverColor,
      backgroundTapColor: buttonStyle.backgroundTapColor,
      contentIdleColor: buttonStyle.contentIdleColor,
      contentHoverColor: buttonStyle.contentHoverColor,
      contentTapColor: buttonStyle.contentTapColor,
      borderWidth: buttonStyle.borderWidth,
      borderRadius: buttonStyle.borderRadius,
      borderIdleColor: buttonStyle.borderIdleColor,
      borderHoverColor: buttonStyle.borderHoverColor,
      borderTapColor: buttonStyle.borderTapColor,
    );
  }
}
