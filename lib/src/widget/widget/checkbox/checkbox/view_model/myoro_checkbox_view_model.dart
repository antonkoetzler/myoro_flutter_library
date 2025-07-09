import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxViewModel {
  MyoroCheckboxViewModel(MyoroCheckboxConfiguration configuration) : state = MyoroCheckboxViewModelState(configuration);

  final MyoroCheckboxViewModelState state;

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
