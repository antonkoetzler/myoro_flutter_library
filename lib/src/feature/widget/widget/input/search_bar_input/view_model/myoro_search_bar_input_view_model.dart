import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_bar_input_state.dart';

/// View model of [MyoroSearchBarInput].
class MyoroSearchBarInputViewModel {
  /// Default constructor.
  MyoroSearchBarInputViewModel(
    MyoroInputStyleEnum inputStyle,
    String label,
    String placeholder,
    TextEditingController controller,
  ) : _state = MyoroSearchBarInputState(inputStyle, label, placeholder, controller);

  /// State.
  final MyoroSearchBarInputState _state;

  /// [_state] getter.
  MyoroSearchBarInputState get state {
    return _state;
  }
}
