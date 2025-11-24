import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_widget_showcase_screen_state.dart';

/// View model of [MyoroIconWidgetShowcaseScreen].
final class MyoroIconWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroIconWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroIconWidgetShowcaseScreenState get state {
    return _state;
  }

  /// [MyoroIconStyle] of the [MyoroIcon].
  MyoroIconStyle? get style {
    final color = state.color;
    final size = state.size;

    if (color == null && size == null) {
      return null;
    }

    return MyoroIconStyle(color: color, size: size);
  }
}
