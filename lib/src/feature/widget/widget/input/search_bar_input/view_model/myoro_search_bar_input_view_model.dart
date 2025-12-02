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
    bool autofocus,
    ValueChanged<String>? onChanged,
    TextEditingController? controller,
  ) : _state = MyoroSearchBarInputState(inputStyle, label, placeholder, autofocus, onChanged, controller);

  /// State.
  final MyoroSearchBarInputState _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroSearchBarInputState get state {
    return _state;
  }
}
