import 'package:faker/faker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollables_widget_showcase_screen_state.dart';

/// View model of [MyoroScrollablesWidgetShowcaseScreen].
final class MyoroScrollablesWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroScrollablesWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroScrollableStyle] of the single child scrollable.
  MyoroScrollableStyle get style {
    return MyoroScrollableStyle(padding: state.padding);
  }

  /// [MyoroListScrollableStyle] of the list scrollable.
  MyoroListScrollableStyle get listScrollableStyle {
    return MyoroListScrollableStyle(padding: state.padding, spacing: state.spacing);
  }

  /// [_state] getter.
  MyoroScrollablesWidgetShowcaseScreenState get state {
    return _state;
  }
}
