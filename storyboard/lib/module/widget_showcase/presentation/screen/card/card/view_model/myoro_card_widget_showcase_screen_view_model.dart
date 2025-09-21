import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCardWidgetShowcaseScreen].
final class MyoroCardWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCardWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroCardWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCardThemeExtension] of the [MyoroCard].
  MyoroCardThemeExtension buildThemeExtension(BuildContext context) {
    final cardThemeExtension = MyoroCardThemeExtension.builder(
      context.colorScheme,
      context.textTheme,
    );

    return cardThemeExtension.copyWith(
      backgroundColor: state.backgroundColor,
      border: state.border,
      borderRadius: state.borderRadius,
      padding: state.padding,
      titleCardSpacing: state.titleCardSpacing,
      titleTextStyle: state.titleTextStyle,
      constraints: state.constraints,
    );
  }
}
