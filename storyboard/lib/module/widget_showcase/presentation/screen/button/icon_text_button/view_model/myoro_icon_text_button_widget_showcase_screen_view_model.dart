import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

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
      invert: _state.invert,
      iconConfiguration: _state.icon != null ? MyoroIconConfiguration(icon: _state.icon!, size: _state.iconSize) : null,
      textConfiguration:
          _state.text.isNotEmpty
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

  /// [MyoroIconTextButtonThemeExtension] builder.
  MyoroIconTextButtonThemeExtension buildThemeExtension(BuildContext context) {
    final buttonViewModel = _state.buttonViewModel;
    final buildButtonThemeExtension = buttonViewModel.buildThemeExtension;
    final buttonThemeExtension = buildButtonThemeExtension(context);
    return MyoroIconTextButtonThemeExtension.fromVariant(buttonThemeExtension);
  }
}
