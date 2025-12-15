import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_state.dart';
part 'myoro_single_child_scrollable_state.dart';
part 'myoro_list_scrollable_state.dart';

/// View model of [MyoroScrollable].
class MyoroScrollableViewModel {
  /// Default constructor.
  MyoroScrollableViewModel(this.state) {
    state.scrollController.addListener(_handleGradientDisplay);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleGradientDisplay();
    });
  }

  /// State.
  final MyoroScrollableState state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// [MyoroScrollableState.scrollController] listener.
  void _handleGradientDisplay() {
    final scrollController = state.scrollController;
    final canScroll = scrollController.canScroll;
    final position = scrollController.position;
    final pixels = position.pixels;
    final minScrollExtent = position.minScrollExtent;
    final maxScrollExtent = position.maxScrollExtent;
    final atTop = pixels <= minScrollExtent;
    final atBottom = pixels >= maxScrollExtent;

    if (!canScroll) {
      state
        ..displayStartingGradient = false
        ..displayEndingGradient = false;
      return;
    }

    state
      ..displayStartingGradient = !atTop
      ..displayEndingGradient = !atBottom;
  }
}
