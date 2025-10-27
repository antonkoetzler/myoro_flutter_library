import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_state.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxViewModel {
  MyoroCheckboxViewModel(String label, bool value, MyoroCheckboxOnChanged? onChanged)
    : _state = MyoroCheckboxState(label, value, onChanged);

  /// State.
  final MyoroCheckboxState _state;

  /// [_state] getter.
  MyoroCheckboxState get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles the checkbox value.
  void toggle([bool? value]) {
    state.value = value ?? !state.value;
  }

  /// On tap up to toggle the [Checkbox],.
  void onTapUp(_) {
    final newValue = !_state.value;
    final onChanged = _state.onChanged;
    onChanged?.call(newValue);
    _state.value = newValue;
  }
}
