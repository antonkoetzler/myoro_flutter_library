import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_state.dart';

/// View model of [MyoroMenu].
class MyoroMenuViewModel<T> {
  /// Default constructor.
  MyoroMenuViewModel(
    MyoroMenuSearchCallback<T>? searchCallback,
    Set<T>? items,
    Set<T> selectedItems,
    MyoroMenuItemBuilder<T> itemBuilder,
    Widget? footer,
  ) : _state = MyoroMenuState(searchCallback, items, selectedItems, itemBuilder, footer);

  /// State.
  final MyoroMenuState<T> _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroMenuState<T> get state {
    return _state;
  }
}
