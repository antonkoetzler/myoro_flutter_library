import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_state.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxViewModel {
  MyoroCheckboxViewModel(MyoroCheckboxConfiguration configuration) : _state = MyoroCheckboxState(configuration);

  /// State.
  final MyoroCheckboxState _state;

  /// [_state] getter.
  MyoroCheckboxState get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles the checkbox value.
  void toggle([bool? enabled]) {
    state.enabled = enabled ?? !state.enabled;
  }

  /// On tap up to toggle the [Checkbox],.
  void onTapUp(_) {
    final configuration = state.configuration;
    final enabled = state.enabled;
    configuration.onChanged?.call(!enabled);
    state.enabled = !state.enabled;
  }
}
