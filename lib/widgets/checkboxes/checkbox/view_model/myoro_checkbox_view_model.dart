import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxViewModel implements MyoroCheckboxViewModelInterface {
  final state = MyoroCheckboxViewModelState();

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void toggle([bool? enabled]) {
    state.enabledController.value = enabled ?? !state.enabled;
  }
}
