import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdowns_widget_showcase_screen_state.dart';

/// View model of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class MyoroSelectionDropdownsWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroSelectionDropdownsWidgetShowcaseScreenState();
  MyoroSelectionDropdownsWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
