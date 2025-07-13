import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_state.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxViewModel {
  /// State.
  final _state = MyoroCheckboxState();

  /// [_state] getter.
  MyoroCheckboxState get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles the checkbox value.
  void toggle([bool? enabled]) {
    state.enabledController.value = enabled ?? !state.enabled;
  }

  /// On tap up to toggle the [Checkbox],.
  void onTapUp(_) {
    final configuration = state.configuration;
    final enabled = state.enabled;
    configuration.onChanged?.call(!enabled);
    state.enabledController.value = !state.enabled;
  }
}
