import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollables_widget_showcase_screen_state.dart';

/// View model of [MyoroScrollablesWidgetShowcaseScreen].
final class MyoroScrollablesWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroScrollablesWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroScrollablesWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroScrollableStyle] of the scrollables.
  MyoroScrollableStyle get style {
    return MyoroScrollableStyle(padding: state.padding);
  }
}
