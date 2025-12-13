import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_state.dart';
part 'myoro_single_child_scrollable_state.dart';
part 'myoro_list_scrollable_state.dart';

/// View model of [MyoroScrollable].
class MyoroScrollableViewModel {
  /// Default constructor.
  MyoroScrollableViewModel(this.state) {
    state.scrollController.addListener(_scrollControllerListener);
  }

  /// State.
  final MyoroScrollableState state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// [MyoroScrollableState.controller] listener.
  void _scrollControllerListener() {
    state.displayGradient = state.scrollController.canScroll;
  }
}
