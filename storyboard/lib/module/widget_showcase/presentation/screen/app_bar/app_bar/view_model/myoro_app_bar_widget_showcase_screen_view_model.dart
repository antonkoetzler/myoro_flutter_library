import 'package:storyboard/storyboard.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroAppBarWidgetShowcaseScreen].
final class MyoroAppBarWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAppBarWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroAppBarWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroAppBarThemeExtension] of the [MyoroAppBar].
  MyoroAppBarThemeExtension buildStyle(BuildContext context) {
    final appBarThemeExtension = MyoroAppBarThemeExtension.builder(context.colorScheme);

    final backgroundColor = state.backgroundColor;

    return appBarThemeExtension.copyWith(
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null,
    );
  }
}
