import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroAppBarConfiguration].
final class MyoroAppBarWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAppBarWidgetShowcaseScreenState();
  MyoroAppBarWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroAppBarConfiguration] of the [MyoroAppBar].
  MyoroAppBarConfiguration configuration(Widget child) {
    return MyoroAppBarConfiguration(bordered: state.bordered, backgroundColor: state.backgroundColor, child: child);
  }
}
