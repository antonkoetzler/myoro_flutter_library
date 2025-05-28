import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroMenuController].
abstract interface class MyoroMenuViewModelInterface {
  /// Dispose function.
  void dispose();

  /// Fetches the items of the [MyoroMenu].
  void fetch();

  /// Fetches extra items ([MyoroMenuConfiguration.onEndReachedRequest]).
  @protected
  void fetchExtra();

  /// Searches in [_items] given [query].
  void search(String query);

  /// Listener of [_scrollController].
  @protected
  void scrollControllerListener();

  // Jump to the last position of the list before
  // calling [MyoroMenuConfiguration.onEndReachedRequest].
  void jumpToBottomPreviousPosition();
}
